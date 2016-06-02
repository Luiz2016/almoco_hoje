class RenameColumInterest1FromUser < ActiveRecord::Migration
  def change
    rename_column :users, :interest_1, :interests
  end
end
