class AddMedOfficesIdToPhysicians < ActiveRecord::Migration
  def change
    add_column :physicians, :med_office_id, :integer
  end
end
