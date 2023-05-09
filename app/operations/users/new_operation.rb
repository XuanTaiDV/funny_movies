module Users
  class NewOperation < ApplicationOperation

    def call
      step_init_user_form
    end

    private

    def step_init_user_form
      @form = NewForm.new
    end
  end
end

