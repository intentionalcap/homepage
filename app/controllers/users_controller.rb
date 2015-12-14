class UsersController < ApplicationController
  def new
    redirect_to welcome_url
  end

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in!(@user)
      redirect_to root_url
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to welcome_url
    end
  end

  def update
    self.password = params[]
  end

  def show
  end

  def index
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
