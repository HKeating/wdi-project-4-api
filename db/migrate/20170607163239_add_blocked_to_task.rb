class AddBlockedToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :blocked, :boolean
  end
end
