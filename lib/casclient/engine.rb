require 'rails/engine'

  module CasClient
    class Engine < Rails::Engine

    config.to_prepare do
      Rails.application.routes.prepend do
        get 'logout', :controller => :cas_session, :action => :destroy, :as => :logout
        get 'cas_proxy_callback/:action', :controller => :cas_proxy_callback, :as => :cas_proxy_callback
      end
    end

  end
end