class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
