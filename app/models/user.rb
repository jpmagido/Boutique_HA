class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


   has_many :carts
   has_many :items
   

   #MAILER 
   #
   
   after_create :welcome_send
   
   def welcome_send
   	WelcomeMailer.welcome_send(self).deliver
   end
 	#
 	#MAILER 
   
end
