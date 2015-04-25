#This is the application controller source code.
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private
	def current_user
		#Assigned user id to a variable to avoid DuplicateMethodCall
		id = session[:user_id] 
		@current_user ||= User.find(id) if id
	end

helper_method :current_user
def authorize
  redirect_to login_url, alert: "Not authorized" if current_user.nil?
end


end
