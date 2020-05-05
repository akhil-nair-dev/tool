class UserMailer < ApplicationMailer
	class UserMailer < ApplicationMailer
 	 default from: 'notifications@example.com'
 
  		def send_welcome_email
    		@user = params[:user]
    		@url  = 'http://example.com/login'
    		mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  		end
	end
end
