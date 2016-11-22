class UsersController < ApplicationController

  def index
		params[:q] ||= {}
  	@q = User.ransack(params[:q])
  	@users = @q.result(distinct: true)
  end

  
  def show
  	@user = User.joins(:external_role, :user, :place).find(params[:id])
    @user_goals = UserGoal.joins(:goal, :user).where(users: { id: params[:id].to_i })
  end

  
  def new
  	@new_user = User.new
  end

  
  def create
  	@new_user = User.new(user_params)
  	
		if @new_user.save
			redirect_to @new_user
		else
			render :new
		end
	end

  
  def edit
    @user = User.find(params[:id])
  end

  
  def destroy
    @user = User.find(params[:id])
  end

  
  def edit_status
    @user = User.find(params[:id])
  end

  
  def update
    @user = User.find(params[:id])

    if @user.comments.present?
      @user.update_attribute(:status, false)
      else
      @user.update_attributes(user_params)
    end

    redirect_to user_path
  end

  
  def assign_goals
    @user = User.find(params[:id])
    params[:q] ||= {}
    @q = Goal.ransack(params[:q])
    @goals = @q.result(distinct: true)
  end

  
  def update_users_goals
    @user_goal = UserGoal.new({ user_id: params[:id], goal_id: params[:goal_id] })

    @user_goal.save()
    redirect_to user_path
  end

  
  def upgrade_goal_status
    @user_goal = UserGoal.joins(:user).find(params[:user_goal_id])
    @user_goal.update_attributes(update_goal_progress)
    redirect_to user_path
  end

  
  def unlink_user_goal
    @user_goal = UserGoal.find(params[:user_goal_id])
    @user_goal.destroy
    redirect_to user_path
  end

  
  private

  def user_params
  	params.require(:user).permit(:name, :lastname, :username, :password, :role_id, :adress, :phone, :email, :curp, :rfc, :favorite_cake, :external_role_id, :user_id, :place_id, :antique, :status, :points, start_date: Date.today.to_s)
  end

  def unsubscribe_user_params
    params.permit(:status => 0)
  end

  def update_user_params
    params.require(:user).permit(:name, :lastname, :username, :password, :role_id, :adress, :phone, :email, :curp, :rfc, :favorite_cake, :external_role_id, :user_id, :place_id, :antique, :status, :points, :comments, start_date: Date.today.to_s)
  end

  def update_goal_progress
    params.permit(:progress)
  end

end
