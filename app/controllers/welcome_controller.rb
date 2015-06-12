class WelcomeController < ApplicationController
  def index
  	@user = current_user
  	@trips = Trip.all.order(:name)
  	# if user_signed_in?
  	# 	redirect_to user_trips_path(current_user)
  	# end
  end
end
