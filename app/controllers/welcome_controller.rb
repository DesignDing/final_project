class WelcomeController < ApplicationController
  def index
  	@user = current_user
  	@trips = Trip.all.order(:name)
  end
end
