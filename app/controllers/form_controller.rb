class FormController < ApplicationController

  def section_id
    "library"
  end

  def index
    file_name = "#{Rails.root}/app/views/form/_example.html.haml"

    haml_rendering = File.read(file_name)
    html_rendering = render_to_string(:partial => "example")
    simple_form_rendering = ""

    render :index, :locals => { :haml_rendering => haml_rendering,
                                :html_rendering => html_rendering,
                                :simple_form_rendering => simple_form_rendering }

  end

end
