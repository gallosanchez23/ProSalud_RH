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
		@new_goal = Goal.create(goal_params)

		if @new_goal.save
			redirect_to @new_goal
		else
			render :new
		end
	end

	def show
		@goal = Goal.find(params[:id])
	end

	def edit
		@goal = Goal.find(params[:id])
	end

	def update
		@goal = Goal.find(params[:id])
		@goal.update_attributes(goal_params)
		redirect_to goals_path
	end

	def destroy
		@goal = Goal.find(params[:id])
		@goal.destroy
		redirect_to goals_path
	end

	private

	def goal_params
		params.require(:goal).permit(:name, :start_date, :end_date, :goal_type, :description)
	end

end
