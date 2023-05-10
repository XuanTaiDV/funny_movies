module Users
  class NewForm < ApplicationForm
    def self.attribute_names
      %i[
        name
        email
        password
        password_confirmation
      ]
    end
  end
end
