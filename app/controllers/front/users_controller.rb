class Front::UsersController < FrontController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to root_path
    else
      #flash.now[:alert] = 'ユーザー名と'
      render 'new'
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
