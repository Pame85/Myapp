class ApplicationController < ActionController::Base
  helper_method :current_order  

  def current_order
    @current_order ||= find_or_create_order
  end

    
  private

  def find_or_create_order
    if current_user.orders.any?
      current_user.orders.last
    else
      current_user.orders.create
    end
  end
end
  