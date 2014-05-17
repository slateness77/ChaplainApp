class StationsController < ApplicationController

	def index
		@station = Station.all
	end

	def create

	end

end