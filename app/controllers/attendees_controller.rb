class AttendeesController < ApplicationController

	

	def create
		@trip = Trip.find(params[:trip_id])
		@attendee = @trip.attendees.create(attendee_params)
		redirect_to trip_path(@trip)

		# if @attendee.save 
		# redirect_to new_trip_path(@trip)
		# else
		# render 'new'
		# end
	end 

	def destroy
		@attendee = Attendee.find(params[:id])
		@attendee.destroy


		redirect_to trip_path(@trip)
	end 

	def attendee_params
		params.require(:attendee).permit(:name, :trip_id)
	end
end
