class UsersController < ApplicationController
  def new
    operator = Users::NewOperation.new(params)
    operator.call
    @form = operator.form
  end

  def create
    operator = Users::CreateOperation.new(params)
    operator.call
    @form = operator.form

    if @form.errors.blank?
      # TODO
    else
      render :new
    end
  end
end
