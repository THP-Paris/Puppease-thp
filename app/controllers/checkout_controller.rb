class CheckoutController < ApplicationController
    after_action :order_confirmation, only: [:success]

    def create
        @user =  current_user
        @total = "0.99".to_d
        @session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'], 
            line_items: [
                {
                    name: "Rails Stripe Checkout", 
                    amount: (@total*100).to_i, 
                    currency: "eur",
                    quantity: 1
                    # owner: @dog.owner.username
                    # owner_email: @dog.owner.email
                },
        ],
        success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
        cancel_url: checkout_cancel_url
    )
        respond_to do |format|
        format.js
        end
    end
    
    def success
        @session = Stripe::Checkout::Session.retrieve(params[:session_id])
        @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
        @email = @session.customer_email
    end

    def cancel
        @session = Stripe::Checkout::Session.retrieve(params[:session_id])
        @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
    end

    private

    def order_confirmation
        UserMailer.order_confirmation(self).deliver_now
    end
end
