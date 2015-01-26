class CreateAppointmentVisitors < ActiveRecord::Migration
  def change
    create_table :appointment_visitors do |t|
      t.integer :appointment_id, null: false
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :email
      t.datetime :checked_in_at
      t.datetime :checked_out_at
      t.timestamps null: false
    end

    add_index :appointment_visitors, :appointment_id
  end
end
