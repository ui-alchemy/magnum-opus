class FormController < ApplicationController

  def index
    render(:index, :locals=> { :haml_reference => get_haml("form"), :html_reference => get_html("form") })
  end

end
