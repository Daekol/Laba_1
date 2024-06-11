# app/controllers/users/sessions_controller.rb

module Users
  class SessionsController < Devise::SessionsController
    layout "application", except: [:new] # Додаємо layout для всіх екшенів, крім new

    private

    def respond_to_on_destroy
      respond_to do |format|
        format.all { head :no_content }
        format.any(*navigational_formats) { redirect_to after_sign_out_path_for(resource_name) }
      end
    end
  end
end
