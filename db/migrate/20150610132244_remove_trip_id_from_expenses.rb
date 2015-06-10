class RemoveTripIdFromExpenses < ActiveRecord::Migration
  def change
    remove_column :expenses, :trip_id, :integer
    remove_index :expenses, :trip_id
  end
end
