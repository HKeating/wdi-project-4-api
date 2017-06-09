class AddDetailsToLog < ActiveRecord::Migration[5.1]
  def change
    add_column :logs, :details, :json
  end
end
