# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

brands  = ["Gap", "Banana Republic", "Boss", "Hugo Boss", "Taylor", "Rebecca Taylor"]
brands.each do |brand|
  Brand.create(name: brand)
end

c_types = ["Denim", "Pants", "Sweaters", "Skirt", "Dresses"]
c_types.each do |c_type|
  ClothingType.create(name: c_type)
end
