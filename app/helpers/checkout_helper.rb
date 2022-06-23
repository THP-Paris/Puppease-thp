module CheckoutHelper
    
    def order_confirmation
        UserMailer.order_confirmation(self).deliver_now
      end
end
