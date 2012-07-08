require 'ostruct'

class LoginController < ApplicationController

  def index
    render :layout => "converge-ui/login_layout"
  end

  def update
    render "index", :layout => "converge-ui/login_layout"
  end

  def password_reset
    render "index", :layout => "converge-ui/login_layout"
  end

  def change_password
    @user = OpenStruct.new(:password_reset_token => "")
    render "change_password", :layout => "converge-ui/change_password_layout"
  end

end
