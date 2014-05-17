class AvailableDaysController < ApplicationController

	def index
		@available_day = AvailableDay.all
	end

end