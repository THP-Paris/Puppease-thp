class CheckoutMailer < ApplicationMailer
    def order_confirmation(user)
        @url = 'http://puppease.com'
        @user = current_user
        mail(to: @user.email, subject: 'Les coordoonnées du maitre')
    end
end
   