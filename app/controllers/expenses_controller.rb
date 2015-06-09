class ExpensesController < ApplicationController
	def index
		@trip = Trip.find(params[:id])
		@expenses = @trip.expenses.order(:date) 
	end 

	def new
		@trip = Trip.find(params[:id])
		@expense = @trip.expenses.build
	end

	def create
		
		@trip = Trip.find(params[:id])
		@expense = @trip.expenses.create(expense_params)

		if @expense.save 
		redirect_to @expense
		else
		render 'new'
		end
	end 

	def show
		@expense = Expense.find(params[:id])

	end 

	def edit
  		@expense = Expense.find(params[:id])
	end

	def update
		@expense = Expense.find(params[:id])
		
		if @expense.update(expense_params)
		redirect_to @expense
		else
		render 'edit'
		end 
	end 

	def destroy
		@expense = Expense.find(params[:id])
		@expense.destroy

		redirect_to trip_expenses_path(@trip)
	end 

	private

    def expense_params
		params.require(:expense).permit(:date, :payer, :description, :amount, :trip_id)
	end

end
