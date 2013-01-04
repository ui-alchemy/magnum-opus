module ApplicationHelper

  include Alchemy::TranslationHelper

  def current_main_tab
    return controller.section_id
  end

  def current_sub_tab
    return controller.controller_name
  end

end
