class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :intention, index: true, foreign_key: true
      t.references :selected_intention, index: true, foreign_key: true
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
