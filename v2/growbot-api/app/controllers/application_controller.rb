class ApplicationController < ActionController::API
  # before_action :validate_api_key

  def validate_api_key
    api_key = params[:key]
    if (!ApiKey.validate(api_key))
      render json: 'Invalid API key provided', status: :unauthorized
    end
  end
end
