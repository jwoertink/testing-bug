class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :directory_id
      t.string :summary
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps null: false
    end

    add_index :appointments, :directory_id
  end
end
