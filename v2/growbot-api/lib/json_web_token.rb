class JsonWebToken
    class << self
        def encode(payload)
            JWT.encode(payload, Rails.application.credentials.secret_key_base)
        end

        def decode(token)
            body = JWT.decode(token, Rails.application.credentials.secret_key_base)
            HashWithIndifferentAccess.new(body.first)
        end
    end
end