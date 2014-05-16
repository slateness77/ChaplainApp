class StationsController < ApplicationController

	def index
		@station = Station.all
	end

end