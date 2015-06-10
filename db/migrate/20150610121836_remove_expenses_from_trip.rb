class RemoveExpensesFromTrip < ActiveRecord::Migration
  def change
  	remove_column :expenses, :trip_id
  end
end
