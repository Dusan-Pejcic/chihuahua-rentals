# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
Dog.delete_all
User.delete_all
puts 'before seeds'
@userfirst = User.create!(email: 'dushan.pejcic@googlemail.com', password: '123456')

Dog.create!(user: @userfirst , name: "Mimi", address: "Lenox Hill New York, NY USA", img_url: "https://i.redd.it/ettw5im7no611.jpg", cuteness_level: 5)
Dog.create!(user: @userfirst , name: "Chi-Chi", address: "832 Marcy Ave", img_url: "https://i.redd.it/ettw5im7no611.jpg", cuteness_level: 5)
Dog.create!(user: @userfirst , name: "Sassy", address: "Flatiron District New York, NY USA", img_url: "https://www.xupes.com/magazine/Content/Images/Media/4185/MultiImages/Original/chanel-cambon-reporter-bag-pink.jpg?w=1440", cuteness_level: 5)
Dog.create!(user: @userfirst , name: "Cindy", address: "564 Park Ave, Brooklyn, NY 11206, USA", img_url: "https://www.telegraph.co.uk/content/dam/on-demand/2018/11/27/dogstinkerbell_trans_NvBQzQNjv4BqwMpl-Jpdv5EMZZkofEupHBFJaBQLXRCzMl9_J53bXTg.jpg", cuteness_level: 5)
Dog.create!(user: @userfirst , name: "Maxxx", address: "130 Court St, Brooklyn, NY 11201, USA", img_url: "https://img.pixers.pics/pho_wat(s3:700/FO/43/68/84/45/700_FO43688445_8e2eaa81e09604030baf4b6fad5d46be.jpg,700,700,cms:2018/10/5bd1b6b8d04b8_220x50-watermark.png,over,480,650,jpg)/stickers-angry-chihuahua.jpg.jpg", cuteness_level: 5)
Dog.create!(user: @userfirst , name: "Meep", address: "104 Broad St, New York, NY 10004, USA", img_url: "https://www.dogster.com/wp-content/uploads/2017/01/pinkysweater-600x600.jpg", cuteness_level: 5)

puts "#{Dog.count} dogs created."

