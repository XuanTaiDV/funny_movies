class ApplicationForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  def initialize(attributes = {})
    # Define dynamic attributes
    self.class.attribute_names.each do |attr|
      self.class.attribute attr.to_sym
    end
    super attributes
  end

  def self.attribute_names
    []
  end
end
