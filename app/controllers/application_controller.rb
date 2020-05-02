class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    @@base_url = Rails.env == "development" ? "http://localhost:4000" : "https://digital-dj-api.herokuapp.com"
end
