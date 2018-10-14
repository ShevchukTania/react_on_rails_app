class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy

  self.per_page = 10
  WillPaginate.per_page = 8
end
