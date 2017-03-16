class WelcomeController < ApplicationController
  protect_from_forgery with: :exception
  
  def index
  end
  
  def hello
    render html: "hello, world!"
  end
   
end
