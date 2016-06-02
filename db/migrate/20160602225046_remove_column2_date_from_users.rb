class RemoveColumn2DateFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :date, :integer
  end
end
