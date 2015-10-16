class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    userParams = params.require(:user).permit(:username, :email, :password)
    @user = User.new userParams
    if @user.save
      login(@user)
      redirect_to "/"
    else
      # use flash message to inform user that their
      # password isn't long enough
      flash[:sign_up_errors] = @user.errors.full_messages
      redirect_to "/"
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    @current_user = current_user
    redirect_to "/users/#{@current_user.id}" if @user != current_user
  end

  def edit
    id = params[:id]
    @user = User.find_by_id(id)
  end

  def update
  end

  def destroy
  end
end
