class AdminMailer < ApplicationMailer

	def order_send(user)
		
		@user = user
		mail to: user.email, subject: "Merci d'avoir commandé", from: "info@mysite.com"

	end

end
