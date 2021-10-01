class Api::V1::TeachersController < ApplicationController
    def index
        teachers = Teacher.all
        render json: teachers, status: :ok
    end

    def show
        teacher = Teacher.find(params[:id])
        render json: teacher, status: :ok
    rescue StandardError
        head(:not_found)
    end

    def create
        teacher = Teacher.create(teacher_params)
        teacher.save!
        render json: teacher, status: 201
    rescue StandardError
        head(:unprocessable_entity)
    end

    def update
        teacher = Teacher.find(params[:id])
        teacher.update(teacher_params)
        render json: teacher, status: :ok
    rescue
        head(:unprocessable_entity)
    end

    def delete
        teacher = Teacher.find(params[:id])
        teacher.destroy!
        render json: teacher, status: :ok
    rescue
        head(:bad_request)
    end

    def my_students
        students = Teacher.find(params[:id]).students
        render json: students, status: :ok
    rescue
        head(:unprocessable_entity)
    end
    
    private

    def teacher_params
        params.require(:teacher).permit(
            :name,
            :email,
            :nascimento
        )
    end
end
