# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Car.create({model: "Gol", brand: "VW", year: 2014, km: 15000, motor: "1.8", value: 23.000})



6.times do 
	c = Car.new
	c.model = "Gol"
	c.brand = "Volks"
	c.year = 96
	c.km = 42
	c.motor = "banana"
	c.value = 10000.00
	c.save
end
