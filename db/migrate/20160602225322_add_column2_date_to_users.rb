class AddColumn2DateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :date, :string
  end
end
