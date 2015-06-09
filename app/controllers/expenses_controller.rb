class ExpensesController < ApplicationController
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
		@trip = Trip.find(params[:trip_id])
		@attendee = @trip.attendees.find(params[:id])

		#@attendee = Attendee.find(params[:id])
		@attendee.destroy
		#redirect_to root_path
		redirect_to trip_path(@trip)

	end 

	def attendee_params
		params.require(:expense).permit(:date, :payer, :description, :amount)
	end
end

end
