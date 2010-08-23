class SessionsController < ApplicationController
  def new
    self.current_user = nil
  end

  def create
    if @user = User.authenticate(params[:login], params[:email])
      reset_session
      self.current_user = @user
      redirect_to messages_url
    else
      flash[:notice] = "Login failed."
      render(:action => "new")
    end
  end
end

