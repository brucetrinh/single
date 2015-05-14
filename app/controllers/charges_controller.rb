class ChargesController < ApplicationController
	def new
	end

	# def create
	#   # Amount in cents
	#   @amount = 499

	#   customer = Stripe::Customer.create(
	#     :email => params[:stripeEmail],
	#     :card  => params[:stripeToken]
	#   )

	#   charge = Stripe::Charge.create(
	#     :customer    => customer.id,
	#     :amount      => @amount,
	#     :description => 'Rails Stripe customer',
	#     :currency    => 'usd'
	#   )

	# rescue Stripe::CardError => e
	#   flash[:error] = e.message
	#   redirect_to charges_path
	# end params[:stripeEmail]

def create
    product = Product.find_by_sku("GROHACK1")

 
    # Create the customer in Stripe
    customer = Stripe::Customer.create(
      email: params[:email],
      card: params[:stripeToken]
    )
 
    # Create the charge using the customer data returned by Stripe API
    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: product.price_in_cents,
      description: product.description,
      currency: 'usd'
    )
 
    # place more code upon successfully creating the charge
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
    flash[:notice] = "Please try again"
  end

end