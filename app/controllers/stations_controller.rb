class StationsController < ApplicationController

	def index
		@station = Station.all
	end

	def create
		redirect_to available_days_path

	end

end