class FormController < ApplicationController

  def index
    form = Form.new
    render :index, :locals => { :form_object => form }
  end

end
