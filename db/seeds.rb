# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create(
           title: 'Hello, niggaz!',
           description: %{Swagga book for swagga dudes.},
           image_url: "http://png-images.ru/wp-content/uploads/2015/01/book_PNG2116.png",
           price: 1488.228
)