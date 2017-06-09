class RemoveParamsFromLog < ActiveRecord::Migration[5.1]
  def change
    remove_column :logs, :params, :json
  end
end
