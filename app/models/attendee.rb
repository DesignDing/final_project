class Attendee < ActiveRecord::Base
  belongs_to :trip
  has_many :expenses, dependent: :destroy
  validates :name, presence: true
end
