class AuthorizeApiRequest
    prepend SimpleCommand

    def initialize(headers = {})
        @headers = headers
    end

    def call
        user
    end

    private

    attr_reader :headers

    def user
        auth_token = decoded_auth_token
        @user ||= User.find(auth_token[:user_id]) if auth_token
        @user || errors.add(:token, 'invalid token') && nil
    end

    def decoded_auth_token
        header = http_auth_header
        @decoded_web_token ||= JsonWebToken.decode(header) if header
    end

    def http_auth_header
        if headers['Authorization'].present?
            return headers['Authorization'].split(' ').last
        else
            errors.add(:token, 'missing token')
        end
        nil
    end
end