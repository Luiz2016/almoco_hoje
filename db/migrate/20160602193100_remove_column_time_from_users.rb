class RemoveColumnTimeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :time, :time
  end
end
