class ApplicationController < ActionController::Base
  # C current_user

  # R require_logged_in

  # L login

  # L logout!

  # L logged_in? (optional)

  helper_method :current_user, :logged_in?

  def current_user
    # We know someone is logged in based on their session token
      # if their session token is the same as the session's session token
      # session === cookie
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def require_logged_in
    # redirecting someone to the signup/login page if they are not logged in
    redirect_to new_user_url if !logged_in?
  end

  def login!(user)
    # updating the session's session_token
      # it should now match the user's session_token
      # we should also reset the user's session token during this process
    session[:session_token] = user.reset_session_token!
    @current_user = user
  end

  def logout!
    current_user.reset_session_token!
    session[:session_token] = nil
    @current_user = nil
  end

  def logged_in?
    !!current_user
  end
end
