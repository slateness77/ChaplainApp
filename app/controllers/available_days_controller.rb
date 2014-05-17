class AvailableDaysController < ApplicationController

	def index
		@available_day = AvailableDay.all
	end

	def create
		redirect_to new_shift_path

	end

end