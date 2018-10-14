class Task < ApplicationRecord
  belongs_to :project
  validates :title, :description, :deadline, presence: true

  def self.for_project(project_id)
    where(project_id: project_id)
  end
end
