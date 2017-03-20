class WelcomeController < ApplicationController
  skip_before_filter :authenticate_user!
  def index
  	@welcome_message = "Hello World!"
  	@current_time = Time.now

  end
end