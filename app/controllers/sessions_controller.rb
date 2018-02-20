class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    session[:username] = params[:username]
    redirect_to '/'
  end

  def destroy
    session.delete :username
    redirect_to '/'
  end

  def info
    @name = session[:username]
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :username
  end
end
