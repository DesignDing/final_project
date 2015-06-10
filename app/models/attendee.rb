class Attendee < ActiveRecord::Base
  belongs_to :trip
  has_many :expenses
  validates :name, presence: true
end
