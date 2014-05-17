class ShiftsController < ApplicationController

	def index
		@shift = Shift.all
	end

	def create
		redirect_to available_days_path

	end

end