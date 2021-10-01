class Language < ApplicationRecord
  validates :name, :teacher_id, presence: true
  belongs_to :teacher
end
