require_relative './house_data.rb'
require_relative './character_data.rb'

House.destroy_all
Character.destroy_all

house_data = get_house_data()
character_data = get_character_data()

house_data.each_pair do |character_name, house|
  info = character_data[character_name]
  current_character = Character.create!({
    name:         info[:name],
    photo_url:    info[:photo_url],
    house:        info[:house]
  })

  houses.each do |house|
    House.create!({
      title:        house[:title],
      type:         house[:type],
      character:    house[:character],
    })
  end
end
