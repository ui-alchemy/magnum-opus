class LoginController < ApplicationController

  def section_id
    "library"
  end

  def new
    render :new, :layout => "login_layout"
  end

  def index
    render :index, :locals => { :src => new_login_path }
  end

  def update
    respond_to do |format|
      format.html { redirect_to user_session_path }
      format.js { render :nothing => true }
    end
  end

  def username_recovery
    respond_to do |format|
      format.html { redirect_to user_session_path }
      format.js
    end
  end

  def password_reset
    respond_to do |format|
      format.html { redirect_to user_session_path }
      format.js
    end
  end

  def save_changed_password
    respond_to do |format|
      format.html { redirect_to user_session_path }
      format.js { render :js => "window.location.href = '#{user_session_path}'" }
    end
  end
end
