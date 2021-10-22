class Api::V1::BaseController < ActionController::API

  # after_action :verify_authorized, except: :index
  # after_action :verify_policy_scoped, only: :index

  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def welcome
    render json: {
      message: "Ruby on Rails Challenge 20200810"
    }, status: :ok
  end

  private

  def user_not_authorized(exception)
    render json: {
      error: "Unauthorized"
    }, status: :unauthorized
  end

  def not_found(exception)
    render json: { error: exception.message }, status: :not_found
  end
end
