class Attendee < ActiveRecord::Base
  belongs_to :trip, dependent: :destroy
  has_many :expenses
  validates :name, presence: true
end
