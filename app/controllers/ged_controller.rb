class GedController < ApplicationController
  def index
  	@institutions = Institution.where("institution_type = 1").limit(20)
  end
end
