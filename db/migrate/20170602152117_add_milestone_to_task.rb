class AddMilestoneToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :milestone_id, :string
  end
end
