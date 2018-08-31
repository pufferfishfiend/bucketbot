class ApiKey < ApplicationRecord
  belongs_to :user

	class << self

		def validate(key)
			found_key = self.find_by_key(key)
			!!found_key
		end

		def generate
			api_key = self.new
			api_key.key = generate_key
			api_key.save
			api_key.key
		end

		private

		def generate_key
			SecureRandom.uuid.gsub(/\-/, '')
		end
	end
end
