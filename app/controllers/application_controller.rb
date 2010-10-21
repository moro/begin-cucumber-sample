class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :set_locale

  helpers = [:current_user, :current_user=, :signed_in?]
  helper_method *helpers
  hide_action   *helpers

  def current_user
    return nil if @current_user == :none
    return @current_user if @current_user

    @current_user ||= (User.find_by_id(session[:user_id]) || :none)
    current_user
  end

  def current_user=(user)
    if user
      session[:user_id] = user.id
      @current_user = user
    else
      session[:user_id] = nil
    end
  end

  def signed_in?
    !!current_user
  end

  private
  def set_locale
    if request.env['HTTP_ACCEPT_LANGUAGE']
      locale = (request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first || I18n.locale)
      I18n.locale = locale
    end
  end

  def authenticate
    redirect_to :root unless signed_in?
  end
end
