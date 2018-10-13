class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :status
      t.datetime :date_assigned
      t.datetime :deadline
      t.references :project
      t.timestamps
    end
  end
end
