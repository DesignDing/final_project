class TripsController < ApplicationController
	def index
		@user = current_user
		@trips = @user.trips.order(:name) 
	end 

	def new
		@user = current_user
		@trip = @user.trips.build
	end

	def create
		
		@user = current_user
		@trip = @user.trips.create(trip_params)

		if @trip.save 
		redirect_to @trip
		else
		render 'new'
		end
	end 

	def show
		@trip = Trip.find(params[:id])
		@attendee = Attendee.new

	end 

	def edit
  		@trip = Trip.find(params[:id])
	end

	def update
		@trip = Trip.find(params[:id])
		
		if @trip.update(trip_params)
		redirect_to @trip
		else
		render 'edit'
		end 
	end 

	def destroy
		@trip = Trip.find(params[:id])
		@trip.destroy


		redirect_to welcome_index_path
	end 

	private

    def trip_params
		params.require(:trip).permit(:name, :number, :user_id)
	end
end
