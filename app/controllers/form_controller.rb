class FormController < ApplicationController

  def index
    form = Form.new
    form.errors.add(:input_with_error, 'This should not happen')

    render :index, :locals => { :form_object => form }
  end

end
