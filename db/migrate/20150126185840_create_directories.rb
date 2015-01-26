class CreateDirectories < ActiveRecord::Migration
  def change
    create_table :directories do |t|
      t.string :name
      t.datetime :last_contacted_at
      t.timestamps null: false
    end
  end
end
