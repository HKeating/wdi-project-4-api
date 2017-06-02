class AddProjectsToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :projects, foreign_key: true
  end
end
