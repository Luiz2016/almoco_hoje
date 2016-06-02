class RemoveColumnDataFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :date, :date
  end
end
