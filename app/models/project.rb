class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :title, :description, presence: true

  self.per_page = 8
end
