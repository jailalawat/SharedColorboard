class ApplicationController < ActionController::Base
	before_action :current_user

	def current_user
		if session[:user_id].blank?
			@current_user = User.find_or_create_by(ip_address: request.ip)
			session[:user_id] = @current_user.id
		else
			@current_user = User.find(session[:user_id])
		end
	end
end
