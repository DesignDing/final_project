class Expense < ActiveRecord::Base
  belongs_to :attendee
  has_one :trip, through: :attendee
end
