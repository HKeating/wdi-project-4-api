class AddImageAndProjectToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :image, :text
    add_reference :users, :project, foreign_key: true
  end
end
