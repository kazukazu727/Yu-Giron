class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  def set_search
    @search=Review.ransack(params[:q])
    @search_reviews=@search.result.page(params[:page])
  end

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
    end
end