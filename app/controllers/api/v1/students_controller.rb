class Api::V1::StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students, status: :ok
    end

    def show
        student = Student.find(params[:id])
        render json: student, status: :ok
    rescue StandardError
        head(:not_found)
    end

    def create
        student = Student.create(student_params)
        student.save!
        render json: student, status: 201
    rescue StandardError
        head(:unprocessable_entity)
    end

    def update
        student = Student.find(params[:id])
        student.update(student_params)
        render json: student, status: :ok
    rescue
        head(:unprocessable_entity)
    end

    def delete
        student = Student.find(params[:id])
        student.destroy!
        render json: student, status: :ok
    rescue
        head(:bad_request)
    end

    private

    def student_params
        params.require(:student).permit(
            :name,
            :matricula,
            :email,
            :nascimento,
            :teacher_id
        )
    end
end
