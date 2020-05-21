class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments

  validates :last_name, presence: true
  validates :last_name, uniqueness: true
  validates :email, presence: true
end
