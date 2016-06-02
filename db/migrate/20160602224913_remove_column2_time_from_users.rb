class RemoveColumn2TimeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :time, :integer
  end
end
