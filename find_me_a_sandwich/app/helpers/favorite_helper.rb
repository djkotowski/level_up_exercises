module FavoriteHelper
  def menu_item_in_favorites(item)
    # obviously perf could be improved here
    # by passing in full list of favorites
    current_user.favorites.exists?(menu_item_id: item.id)
  end
end
