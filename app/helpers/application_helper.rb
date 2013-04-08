module ApplicationHelper

  include UIAlchemy::TranslationHelper

  def current_main_tab
    return controller.section_id
  end

  def current_sub_tab
    return controller.controller_name
  end

  def render_code_example(section, type, format)
    filename =  File.join(Rails.root, 'app', 'assets', 'code-examples', current_sub_tab, "#{section}-#{type}.#{format}" )
    file = File.open(filename)
    render :text => file.read
  rescue => ex
    logger.error ex.message
    logger.error ex.backtrace.join("\n")

    render :text => ''
  end

end
