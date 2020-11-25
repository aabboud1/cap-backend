class ApplicationController < ActionController::Base
    # protect_from_forgery with: :null_session

    def secret_key
        "secret"
      end
    
      def encode(payload)
        JWT.encode(payload, secret_key, "HS256")
      end
    
      def decode(token)
        JWT.decode(token, secret_key, true, {algorithm: "HS256"})[0]
      end
end
