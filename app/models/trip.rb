class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :attendees, dependent: :destroy
  has_many :expenses, dependent: :destroy
end
