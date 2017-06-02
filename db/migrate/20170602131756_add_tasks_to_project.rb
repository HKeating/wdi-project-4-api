class AddTasksToProject < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :tasks, foreign_key: true
  end
end
