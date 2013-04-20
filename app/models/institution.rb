class Institution < ActiveRecord::Base
  attr_accessible :address, :city, :institution_type, :name, :phone, :url, :zip
end
