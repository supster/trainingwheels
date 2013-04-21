class Institution < ActiveRecord::Base
  attr_accessible 	:name, :description,
  					:address, :city, :state_abbr, :zip_code, 
  					:institution_type, :phone, :url, 
  					:lat, :long

  validates :name, presence: true

end
