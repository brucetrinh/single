# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

product_details = Product.create(
	title: "Product 1 Title",
	subtitle: "Product 1 Subtitle",
	price: "9",
	sku: "PROD001",
	description: %{Test Product 1},
	)