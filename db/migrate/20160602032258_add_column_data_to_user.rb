class AddColumnDataToUser < ActiveRecord::Migration
  def change
    add_column :users, :date, :integer
  end
end
