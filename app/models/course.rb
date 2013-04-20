class Course < ActiveRecord::Base
  attr_accessible :cost, :days, :end, :instruction_language, :site_address, :start, :description, :instruction_mode
end
