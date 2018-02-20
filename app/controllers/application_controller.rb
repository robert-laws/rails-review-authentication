class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    name = session[:username] ||= nil
    render inline: "hello user: #{name}"
  end

  def info
    return head(:forbidden) unless session.include? :username
    render inline: "Some information..."
  end
end
