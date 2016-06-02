class AddColumnTimeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :time, :integer
  end
end
