class LoginController < ApplicationController

  def index
    render :layout => "converge-ui/login_layout"
  end

  def update
    render "index", :layout => "converge-ui/login_layout"
  end

  def password_reset
    render "password_reset", :layout => "converge-ui/password_reset_layout"
  end

  def change_password
    render "change_password", :layout => "converge-ui/change_password_layout"
  end

end
