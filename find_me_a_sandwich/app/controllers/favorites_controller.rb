class FavoritesController < ApplicationController
  before_action :find_user_favorites, only: [:index]

  def index
    @menu_items = @favorites.inject([]) do |menu_items, f|
      menu_items << MenuItem.find(f.menu_item_id)
    end
  end

  def create
    if params[:favorite][:checked] == "1"
      @favorite = Favorite.create(favorite_params(params))
    else
      Favorite.find_by(favorite_params(params)).destroy
    end
    redirect_to(:back)
  end

  def add
    redirect_to(:back)
  end

  def new
    redirect_to(:back)
  end

  def destroy
    favorite_params = { user_id: params[:user_id], menu_item_id: params[:id] }
    Favorite.find_by(favorite_params).destroy
    redirect_to(:back)
  end

  def browse
    @favorites = Favorite.where("user_id != ?", current_user.id)
    @users = @favorites.inject([]) { |users, f| users << User.find(f.user_id) }
    @menu_items = @favorites.inject([]) do |menu_items, f|
      menu_items << MenuItem.find(f.menu_item_id)
    end
    render 'favorites/browse'
  end

  private

  def favorite_params(params)
    { user_id: params[:user_id],
      menu_item_id: params[:favorite][:menu_item_id] }
  end
end
