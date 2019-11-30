# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



  Category.create!(category_name: 'スポーツ',
  	               category_image: File.open("./public/images/sports.jpg"))
  Category.create!(category_name: '旅行', category_image:File.open("./public/images/travel.jpg"))
  Category.create!(category_name: '音楽', category_image:File.open("./public/images/music.jpg"))
  Category.create!(category_name: 'ファッション', category_image:File.open("./public/images/fashion.jpg"))
  Category.create!(category_name: '映画', category_image:File.open("./public/images/movies.jpg"))
  Category.create!(category_name: 'イベント', category_image:File.open("./public/images/An_event.jpg"))
  Category.create!(category_name: 'ショッピング', category_image:File.open("./public/images/shopping.jpg"))
  Category.create!(category_name: '料理', category_image:File.open("./public/images/cuisine.jpg"))



  