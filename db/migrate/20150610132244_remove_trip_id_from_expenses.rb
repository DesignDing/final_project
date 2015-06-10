class RemoveTripIdFromExpenses < ActiveRecord::Migration
  def change
    remove_column :expenses, :trip_id, :integer
  end
end
