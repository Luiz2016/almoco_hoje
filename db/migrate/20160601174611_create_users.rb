class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :interest_1
      t.string :interest_2
      t.string :interest_3
      t.string :interest_4
      t.string :company
      t.string :address
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
