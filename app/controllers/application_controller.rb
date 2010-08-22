# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :set_locale

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  #
  private
  def set_locale
    if request.env['HTTP_ACCEPT_LANGUAGE']
      locale = (request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first || I18n.locale)
      I18n.locale = locale
    end
  end
end
