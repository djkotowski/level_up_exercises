class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :menu_item

  def self.friends_favorites(friends)
    total_count = 0
    friends_favorites = friends.each_with_object([]) do |e, a|
      a << { name: e.full_name, favorites: e.favorites }
      total_count += e.favorites.count
    end
    [friends_favorites, total_count]
  end
end
