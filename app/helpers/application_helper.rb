module ApplicationHelper
  def errors_message(form, attribute_name)
    form.errors.messages[attribute_name].map.with_index do |message, index|
      content_tag(:p, "#{attribute_name} #{message}", class: "text-danger #{'mb-0' if index.zero?}" )
    end.reduce(&:+)
  end
end
