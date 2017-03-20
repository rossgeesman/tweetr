class TweetsController < ApplicationController
  
  def search
  	@handle = search_params[:handle]
  	begin 
      @tweets = TWITTER_API.user_timeline(@handle, count: 25)
    rescue StandardError => error
      flash[:alert] = (error.kind_of? Twitter::Error::Unauthorized) ? "Tweets for #{@handle} aren't visible to the public. :(" : error.message
      redirect_to public_root_path
    end
  end
  
  private

  def search_params
  	params.permit(:handle)
  end

end