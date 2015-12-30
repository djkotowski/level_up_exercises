class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def delivery_client
    Delivery::Client.new(AppConfig.delivery.site,
      "c03950f523d31a1a1cdf622143cf95875a37b413",
      "c03950f523d31a1a1cdf622143cf95875a37b413",
      delivery_auth_callback_url)
  end
end
