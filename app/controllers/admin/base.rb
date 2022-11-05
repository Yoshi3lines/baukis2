class Admin::Base < ApplicationController
  private def current_administrators
    if session[:administrators_id]
      @administrators_id ||=
        Admin.find_by(id: session[:administrators_id])
    end
  end

  helper_method :current_administrators
end