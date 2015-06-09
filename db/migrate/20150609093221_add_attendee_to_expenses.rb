class AddAttendeeToExpenses < ActiveRecord::Migration
  def change
    add_reference :expenses, :attendee, index: true, foreign_key: true
  end
end
