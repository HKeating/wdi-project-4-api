class AddCompletedToMilestone < ActiveRecord::Migration[5.1]
  def change
    add_column :milestones, :completed, :boolean
  end
end
