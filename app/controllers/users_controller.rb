class UsersController < ApplicationController
  def index
		params[:q] ||= {}
  	@q = User.ransack(params[:q])
  	@users = @q.result(distinct: true)
  end

  def show
  	@user = User.joins(:external_role, :user, :place).find(params[:id])
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
    if @user.update_attributes(update_user_params)
      if @user.comments.present?
        puts '+++++++++++++++++++++++++++++++++++++++++++++++++++ el comentario está presente +++++++++++++++++++++++++++++++++++++++'
        if @user.update_attributes()
          puts "------------------------- el estatus ha cambiado a #{@user.status} ---------------------------------------------"
        end
      end
      redirect_to user_path
    else
      render :index
    end
=begin
    puts @user.comments

    if(@user.comments.present?)
      puts '+++++++++++++++++++++++++++++++++++++++++++++++++++ el comentario está presente +++++++++++++++++++++++++++++++++++++++'
      @user.update_attributes(:status => false)
      puts @user.status
    end

    redirect_to user_path
=end
  end

  private

  def user_params
  	params.require(:user).permit(:name, :lastname, :username, :password, :role_id, :adress, :phone, :email, :curp, :rfc, :favorite_cake, :external_role_id, :user_id, :place_id, :antique, :status, :points, start_date: Date.today.to_s)
  end

  def update_user_params
    params.require(:user).permit(:name, :lastname, :username, :password, :role_id, :adress, :phone, :email, :curp, :rfc, :favorite_cake, :external_role_id, :user_id, :place_id, :antique, :status, :points, :comments, start_date: Date.today.to_s)
  end

end
