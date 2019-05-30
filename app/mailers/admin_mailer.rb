class AdminMailer < ApplicationMailer

	def order_send(user)
		
		@user = user
		@user1 = User.find(user)

		mail to: User.find(user).email, subject: "Merci d'avoir commandé", from: "info@mysite.com"

	end

end
