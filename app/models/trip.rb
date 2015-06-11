class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :attendees, dependent: :destroy
  has_many :expenses, through: :attendees, dependent: :destroy
end
