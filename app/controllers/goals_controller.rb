class GoalsController < ApplicationController

	def index
		params[:q] ||= {}
  	@q = Goal.ransack(params[:q])
  	@goals = @q.result(distinct: true)
	end

	def new
		@new_goal = Goal.new
	end

	def create
	end

end
