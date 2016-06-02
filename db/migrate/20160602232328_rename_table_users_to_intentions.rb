class RenameTableUsersToIntentions < ActiveRecord::Migration
  def change
    rename_table :users, :intentions
  end
end
