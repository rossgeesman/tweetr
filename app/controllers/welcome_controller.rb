class WelcomeController < ApplicationController
  def index
  	@welcome_message = "Hello World!"
  	@current_time = Time.now

  end
end