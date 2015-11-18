class Physician < ActiveRecord::Base
belongs_to :specialty
belongs_to :med_office
searchkick
end
