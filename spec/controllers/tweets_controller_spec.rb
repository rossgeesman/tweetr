require 'rails_helper'

describe TweetsController do
  describe "search" do
  	before do
  	  @user = User.create(password: 'password', email: 'fake@fakemail.com')
      sign_in @user
  	end
    
    it "should redirect back if there is a problem" do
      handle = 'fakehandle'
      allow(TWITTER_API).to receive(:user_timeline).with(handle, count: 25).and_raise(StandardError.new)
      get :search, params: {handle: handle}
      expect(response).to redirect_to(public_root_path)
    end

    it "should inform user if handle belongs to a nonpublic profile" do
      handle = 'fakehandle'
      allow(TWITTER_API).to receive(:user_timeline).with(handle, count: 25).and_raise(Twitter::Error::Unauthorized.new)
      get :search, params: {handle: handle}
      expect(flash[:alert]).to eq("Tweets for #{handle} aren't visible to the public. :(")
    end
  end
end