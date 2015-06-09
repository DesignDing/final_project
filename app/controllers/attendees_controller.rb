class AttendeesController < ApplicationController
	def create
		
		@trip = Trip.find(params[:trip_id])
		@attendee = @trip.attendees.create(attendee_params)

		if @attendee.save 
		redirect_to trip_path(@trip)
		else
		render 'new'
		end
	end 

	def destroy
		@attendee = Attendee.find(params[:id])
		@attendee.destroy


		redirect_to trip_path(@trip)
	end 

	def expense_params
		params.require(:attendee).permit(:name, :trip_id)
	end
end
