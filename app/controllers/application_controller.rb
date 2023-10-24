class ApplicationController < ActionController::Base
    before_action :authenticate_user!, only: [:secure_action]
    
    def secure_action
      # Action accessible only to authenticated users
    end
  end
  