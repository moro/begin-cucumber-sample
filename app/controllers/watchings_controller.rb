class WatchingsController < ApplicationController
  before_filter :authenticate
  def create
    current_user.watchings.create!(params[:watching])
    redirect_to :back
  end

  def destroy
    current_user.watchings.find(params[:id]).destroy
    redirect_to :back
  end
end
