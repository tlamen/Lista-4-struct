class Student < ApplicationRecord
  validates :name, :matricula, :email, :nascimento, :teacher_id, presence: true
  validates_date :nascimento, before: lambda { Date.current }
  validates :matricula, length: {is: 9}
  validates :matricula, uniqueness: true
  belongs_to :teacher
end
