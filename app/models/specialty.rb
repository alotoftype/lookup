class Specialty < ActiveRecord::Base
 has_many :physicians
 has_many :med_offices, through: :physicians

end
