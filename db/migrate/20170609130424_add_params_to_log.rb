class AddParamsToLog < ActiveRecord::Migration[5.1]
  def change
    add_column :logs, :params, :json
  end
end
