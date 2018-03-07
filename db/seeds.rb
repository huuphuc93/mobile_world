# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Maker.create(name: "Apple Co");
8.times do
    Mobile.create(name: "iPhone 8 Plus 256GB", price: 250, color: "pink", width: 78, height: 158, font_camera: 12 , behind_camera: 12, weight: 202, battery: 2691, resolution_width: 1080, resolution_height: 1920, maker_id: 1, cover_image: "p-1.jpg");
end