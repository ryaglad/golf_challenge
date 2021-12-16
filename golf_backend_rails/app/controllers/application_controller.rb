class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
    def add_cors_headers
        origin = request.headers["Origin"]
        unless (not origin.nil?) and (origin == "http://localhost" or origin.starts_with? "http://localhost:")
          origin = "http://localhost:3001"
        end
        headers['Access-Control-Allow-Origin'] = origin
        headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS, PUT, DELETE'
        allow_headers = request.headers["Access-Control-Request-Headers"]
        if allow_headers.nil?
          #shouldn't happen, but better be safe
          allow_headers = 'Origin, Authorization, Accept, Content-Type'
        end
        headers['Access-Control-Allow-Headers'] = allow_headers
        headers['Access-Control-Allow-Credentials'] = 'true'
        headers['Access-Control-Max-Age'] = '1728000'
      end
end
