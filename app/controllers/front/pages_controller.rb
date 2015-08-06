class Front::PagesController < FrontController
  def home
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      redirect_to sign_in_path
    end
  end
end
