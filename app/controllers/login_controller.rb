require 'ostruct'

class LoginController < ApplicationController
  layout "login"

  def index
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

  def change_password
    @user = OpenStruct.new(:password_reset_token => "")
  end

  def save_changed_password
    respond_to do |format|
      format.html { redirect_to user_session_path }
      format.js { render :js => "window.location.href = '#{user_session}'" }
    end
  end
end
