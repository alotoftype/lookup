class CreateMedOffices < ActiveRecord::Migration
  def change
    create_table :med_offices do |t|
      t.text :region
      t.text :name
      t.text :address
      t.boolean :parking
      t.text :hours
      t.text :cross_street
      t.text :landmark
      t.string :fax
      t.string :urgent
      t.string :routine

      t.timestamps null: false
    end
  end
end
