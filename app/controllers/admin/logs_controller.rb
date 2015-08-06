class Admin::LogsController < AdminController
  def index
    @logs = Log.where(user_id: params[:user_id])
  end
end
