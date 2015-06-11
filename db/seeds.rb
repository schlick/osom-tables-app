# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Thing.destroy_all
100.times { |i| Thing.create(name: "Thing #{i}", description: "Thing Desc #{i}", size: i) }

Item.destroy_all
100.times { |i| Item.create(name: "Item #{i}", description: "Item Desc #{i}", size: i) }
