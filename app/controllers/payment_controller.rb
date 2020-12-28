class PaymentController < ApplicationController

  before_action :check_if_logged_in

  def pay
    @token = client_token

    @total = 0
    @current_user.basket.line_items.each do |item|
      @total += item.product.price*item.quantity
    end
  end

  def braintreegateway
    gateway = Braintree::Gateway.new(
      :environment => :sandbox,
      :merchant_id => "q9w7d2k22r3492x3",
      :public_key => "gqx279w8nh7qvvrf",
      :private_key => "2b5033f5fd7a53fce390745ad308e719",
    )
  end

  def client_token
    # pass client_token to your front-end
    gateway = braintreegateway

    client_token = gateway.client_token.generate


  end

  def process_payment
    gateway = braintreegateway
    total = 0
    @current_user.basket.line_items.each do |item|
      total += item.product.price*item.quantity
    end
    result = gateway.transaction.sale(
      :amount => total,
      :payment_method_nonce => params[:nonce],
      :options => {
        :submit_for_settlement => true
      }
    )
    redirect_to products_path
  end

end
