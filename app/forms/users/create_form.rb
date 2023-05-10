module Users
  class CreateForm < NewForm
    with_options presence: true do
      validates :name
      validates :email
      validates :password
    end

    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

    validate :password_confirmation_unmatched

    private
    def password_confirmation_unmatched
      return if password == password_confirmation

      errors.add(:password, " is unmatched to password_confirmation")
    end
  end
end
