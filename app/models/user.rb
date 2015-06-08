class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
  
=======
  has_many :trips
>>>>>>> 1ca074146c3bed724c62787930b768a7f17b0f33
end
