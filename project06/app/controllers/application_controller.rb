# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  #include Authentication
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  #before_filter { |c| Authorization.current_user = c.current_user }

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password


  helper_method :current_user
   
  private

  def current_user_session
     return @current_user_session if defined?(@current_user_session)
     @current_user_session = UserSession.find
  end
					    
  def current_user
     return @current_user if defined?(@current_user)
     @current_user = current_user_session && current_user_session.record
  end
  def require_user
  	   unless current_user
     flash[:notice] = "You must log in if you want to do that."
 		  redirect_to root_url
  		  return false
  	   end
	 end

	 def require_no_user
	   if current_user
  flash[:notice] = "You must be logged out to access #{request.path}."
 		  redirect_to admin_root_url
		  return false
  		end
 end
end
