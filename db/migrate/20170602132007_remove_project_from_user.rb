class RemoveProjectFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_reference :users, :project, foreign_key: true
  end
end
