class RenameColumnAddressFromIntentionsToLocation < ActiveRecord::Migration
  def change
    rename_column :intentions, :address, :location
  end
end
