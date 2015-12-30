class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def delivery_client
    Delivery::Client.new(AppConfig.delivery.site,
      ENV["DELIVERY_API_KEY"],
      ENV["DELIVERY_API_SECRET"],
      delivery_auth_callback_url)
  end

  def find_user_favorites
    @user = User.find(current_user.id)
    @favorites = @user.favorites
  end
end
