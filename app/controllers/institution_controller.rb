class InstitutionController < ApplicationController

	def show
		@institution = Institution.find(params[:id])
	end

end
