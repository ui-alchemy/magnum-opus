class LoginController < ApplicationController

  def index
    render :layout => "converge-ui/login_layout"
  end

  def update
    render "index", :layout => "converge-ui/login_layout"
  end

end
