class ExpensesController < ApplicationController
	def index
		@trip = Trip.find(params[:trip_id])
		@expenses = @trip.expenses.order(:date) 


	end

	def new
		@trip = Trip.find(params[:trip_id])
		@expense = Expense.new
	end


	# def create
	# 	@trip = Trip.find(params[:trip_id])
	# 	@expense = @trip.expenses.create(expense_params)
	# 	redirect_to trip_expense_path(@trip,@expense)

	# end

	def create
		
		#@trip = Trip.find(params[:trip_id])
		@expense = Expense.new(expense_params)
		#@expense = @trip.expenses.create(expense_params)

		if @expense.save 
			redirect_to trip_expenses_path(@expense.trip)
		else
			render 'new'
		end
	end 

	def show
		# @trip = Trip.find(params[:trip_id])

		# @expense = Expense.find(params[:id])

		@expense = Expense.find(params[:id])

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
		expense = Expense.find(params[:id])

		trip = expense.trip

		expense.destroy

		redirect_to trip_path(trip)

		# Expense.delete(params[:id])
		# @trip = Trip.find(params[:trip_id])
		# @expense = @trip.expenses.find(params[:id])

		# #@expense = expense.find(params[:id])
		# @expense.destroy
		# #redirect_to root_path
		# redirect_to trip_path(@trip)

	end 

	def expense_params
		params.require(:expense).permit(:date, :payer, :description, :amount, :attendee_id)
	end
end

