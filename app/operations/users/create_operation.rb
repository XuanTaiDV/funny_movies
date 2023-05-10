module Users
  class CreateOperation < ApplicationOperation

    def call
      step_validation! { return }
      step_create_user!
    end

    private

    def step_validation!
      @form = CreateForm.new(permited_params)
      yield if form.invalid?
    end

    def step_create_user!
      @user = User.create!(
        name: form.name,
        email: form.email,
        password: form.password
      )
    end

    def permited_params
      params.permit(CreateForm.attribute_names)
    end
  end
end

