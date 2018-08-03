class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
      render "home/index"
    end

    def sign_in
        render "home/sign_in"
      end

      def sign_up
          render "home/sign_up"
        end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
