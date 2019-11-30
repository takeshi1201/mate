class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  # before_filter :set_request_from

	def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    abouts_path
  end


  # どこのページからリクエストが来たか保存しておく
  # def set_request_from
  #   if session[:request_from]
  #     @request_from = session[:request_from]
  #   end
  #   # 現在のURLを保存しておく
  #   session[:request_from] = request.original_url
  # end

  # # 前の画面に戻る
  # def return_back
  #   if request.referer
  #     redirect_to :back and return true
  #   elsif @request_from
  #     redirect_to @request_from and return true
  #   end
  # end
protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :address])
  end
end
