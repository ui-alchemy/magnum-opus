class ChangePasswordController < ApplicationController

  def section_id
    "library"
  end

  def new
    @user = User.new
    render :new, :layout => "login_layout"
  end

  def index
    render "login/index", :locals => { :src => new_change_password_path }
  end

end
