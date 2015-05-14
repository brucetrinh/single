# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

growth_hacking = Product.create(
	title: "Growth Hacking",
	subtitle: "Crash Course",
	price: "6.00",
	sku: "GROHACK1"
	description: %{Enter text in here},
	)