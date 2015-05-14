class PagesController < ApplicationController
	def home
		@product = Product.find_by_sku("PROD001")
	end
end