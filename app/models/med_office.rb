class MedOffice < ActiveRecord::Base
  has_and_belongs_to_many :services
  has_many :physicians
  has_many :specialties, :through => :physicians

end