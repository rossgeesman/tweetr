class WelcomeController < ApplicationController
  skip_before_filter :authenticate_user!
  
  def index
	@welcome_message = "Welcome to Tweetr!"
  end
end