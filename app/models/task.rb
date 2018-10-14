class Task < ApplicationRecord
  belongs_to :project
  def self.for_project(project_id)
    where(project_id: project_id)
  end
end
