class SpotifyController < ApplicationController
    def query
        # Looks for something in the spotify db
    end

    def request
        url = "https://accounts.spotify.com/authorize"

        query_params = {
            client_id: Rails.application.credentials[Rails.env.to_sym][:spotify]    
            [:client_id],
            response_type: 'code',
            redirect_uri: `http://localhost:4000/callback`,
            scope: "user-library-read 
            playlist-read-collaborative
            playlist-modify-private
            user-modify-playback-state
            user-read-private
            user-top-read
            playlist-modify-public",
           show_dialog: true
          }

          redirect_to "#{url}?#{query_params.to_query}"
    end
    
end