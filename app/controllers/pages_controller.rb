class PagesController < ApplicationController

	def home
		
		@user = current_user

		if user_signed_in?
			@tweet = current_user.tweets.build
		end	
	end
end
