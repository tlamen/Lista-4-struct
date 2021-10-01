class Teacher < ApplicationRecord
    has_many :students

    validates :name, :email, :nascimento, presence: true
    validates_date :nascimento, before: lambda { Date.current }
end
