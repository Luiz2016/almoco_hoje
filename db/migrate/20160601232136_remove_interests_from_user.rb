class RemoveInterestsFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :interest_2, :string
    remove_column :users, :interest_3, :string
    remove_column :users, :interest_4, :string
  end
end
