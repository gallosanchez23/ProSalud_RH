class PresentsController < ApplicationController

	def index
		params[:q] ||= {}
  	@q = Present.ransack(params[:q])
  	@presents = @q.result(distinct: true)
	end

	def new
		@new_present = Present.new
	end

	def create
	end

end
