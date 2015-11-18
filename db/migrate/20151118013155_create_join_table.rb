class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :med_offices, :services do |t|
      # t.index [:med_office_id, :service_id]
      # t.index [:service_id, :med_office_id]
    end
  end
end
