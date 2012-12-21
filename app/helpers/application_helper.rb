module ApplicationHelper
  @@translations = {
    :show_password => _("Show Password"),
    :example_logo => _("Alchemy Workbench"),
    :forgot_username_password => _("Forgot username or password?"),
    :username => _("Username"),
    :password => _("Password"),
    :login => _("Login")
  }

  def get_string(text_key)
    return @@translations[text_key]
  end
end
