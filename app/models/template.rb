class Template < ApplicationRecord
  has_many :resumes
  validates :name, :description, presence: true
end
