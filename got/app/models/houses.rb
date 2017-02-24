class Favorites < ActiveRecord::Base
  has_many: :characters
end
