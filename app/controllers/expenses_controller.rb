class ExpensesController < ApplicationController
	def create
		@trip = Trip.find(params[:trip_id])
		@expense = @trip.expenses.create(expense_params)
		redirect_to trip_expense_path(@trip,@expense)

	end

	# def edit
 #  		@expense = Expense.find(params[:id])

	# end

	# def update
	# 	@expense = Trip.find(params[:id])
		
	# 	if @trip.update(trip_params)
	# 	redirect_to @trip
	# 	else
	# 	render 'edit'
	# 	end 
	# end 

	def destroy
		@trip = Trip.find(params[:trip_id])
		@expense = @trip.expenses.find(params[:id])

		#@expense = expense.find(params[:id])
		@expense.destroy
		#redirect_to root_path
		redirect_to trip_path(@trip)

	end 

	def expense_params
		params.require(:expense).permit(:date, :payer, :description, :amoun, :trip_id)
	end
end

