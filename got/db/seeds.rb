# require_relative './house_data.rb'
# require_relative './character_data.rb'
#
# House.destroy_all
# Character.destroy_all
#
# house_data = get_house_data()
# character_data = get_character_data()
#
# house_data.each_pair do |character_name, house|
#   info = character_data[character_name]
#   current_character = Character.create!({
#     name:         info[:name],
#     photo_url:    info[:photo_url],
#     house:        info[:house]
#   })
#
#   houses.each do |house|
#     House.create!({
#       title:        house[:title],
#       type:         house[:type],
#       character:    house[:character],
#     })
#   end
# end
#

house1 = House.create(name: "Targaryen", house_url: "https://img.clipartfox.com/06ce146e81cdf14d334e69190ceb2e84_targaryan-sigil-house-targaryen-clipart_3051-3164.png")
house2 = House.create(name: "Night's Watch", house_url: "http://static.cdn.ea.com/battlelog/prod/emblems/320/717/bf3/2832655391748020717.jpeg?v=1346877342")
house3 = House.create(name: "Stark", house_url:"https://s-media-cache-ak0.pinimg.com/736x/4a/bc/38/4abc38758eba60d6712bd86dd1542697.jpg")
house4 = House.create(name: "Stark", house_url:"https://s-media-cache-ak0.pinimg.com/736x/4a/bc/38/4abc38758eba60d6712bd86dd1542697.jpg")
house5 = House.create(name: "Lannister", house_url:"https://www.brandsoftheworld.com/sites/default/files/styles/logo-thumbnail/public/012014/house_lannister.png?itok=6lVFuitE")

character1 = Character.create(name: "Daenerys Targaryen", character_photo: "http://i.lv3.hbo.com/assets/images/series/game-of-thrones/character/s5/daenarys-1024.jpg", house_id: 1)
character2 = Character.create(name: "Jon Snow", character_photo: "https://blogs-images.forbes.com/insertcoin/files/2015/01/thrones2.jpg", house_id: 2)
character3 = Character.create(name: "Arya Stark", character_photo: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/04/27/08/22-sansa-stark.w1200.h630.jpg", house_id: 3)
character4 = Character.create(name: "Sansa Stark", character_photo: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/04/27/08/22-sansa-stark.w1200.h630.jpg", house_id: 4)
character5 = Character.create(name: "Tyrion Lannister", character_photo: "http://i.telegraph.co.uk/multimedia/archive/03295/Tyrion_1_3295189b.jpg", house_id: 5)
