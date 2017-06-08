class AddDayToLog < ActiveRecord::Migration[5.1]
  def change
    add_column :logs, :day, :integer
  end
end
