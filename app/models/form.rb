class Form
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :id, :text_input_with_translation, :text_input_with_options, :password_input,
                :email_input, :url_input, :search_input,
                :required_input_through_validations, :required_input_through_options,
                :info_input, :readonly_input, :disabled_input, :number_input,
                :range_input, :file_input, :textarea, :date_input,
                :radio_vertical, :radio_horizontal, 
                :boolean_checkbox, :checkbox_with_text, :checkbox_vertical, :checkbox_horizontal,
                :input_with_success, :input_with_warning, :input_with_error, :select, :multiselect

  validates :required_input_through_validations, :presence => true
  validates :number_input, :numericality => { :greater_than => -5, :less_than => 5 }

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

  def info_input
    "This is informative information only"
  end

  def readonly_input
    "This is Readonly"
  end

  def disabled_input
    "This input is disabled"
  end

end
