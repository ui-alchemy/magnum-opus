module ApplicationHelper
  @@translations = {
    :show_password => _("Show Password"),
    :example_logo => _("Example Logo"),
    :forgot_username_password => _("Forgot username or password?"),
    :username => _("Username"),
    :password => _("Password"),
    :login => _("Login")
  }

  def get_string(text_key)
    return @@translations[text_key]
  end

  def get_haml(controller_name)
    f = File.open("#{Rails.root}/app/views/#{controller_name}/_reference.haml")
    haml_reference = f.read
    f.close

    return haml_reference
  end

  def get_html(controller_name)
    return render_to_string(:partial => "#{controller_name}/reference") 
  end

end
