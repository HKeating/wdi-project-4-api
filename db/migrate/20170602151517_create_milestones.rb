class CreateMilestones < ActiveRecord::Migration[5.1]
  def change
    create_table :milestones do |t|
      t.string :title
      t.integer :day
      t.references :tasks, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
