class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :degree
      t.integer :specialty_id

      t.timestamps null: false
    end
  end
end
