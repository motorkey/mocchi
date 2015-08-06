class Front::LogsController < FrontController
  def create
    log = Log.new(params.permit(:user_id))
    log.time = Time.zone.now
    if params[:'start-end'] == 'start'
      log.start_end = 'start'
      if log.save
        redirect_to root_path, notice: '勉強スタート！'
      else
        #
      end
    else
      log.start_end = 'end'
      if log.save
        redirect_to root_path, notice: '勉強終了！'
      else
        #
      end
    end
  end
end
