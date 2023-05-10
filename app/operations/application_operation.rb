class ApplicationOperation
  attr_reader :form

  def initialize(params)
    @params = params
  end

  def call; end

  private
  attr_reader :params

  def step_init_user_form
    @form = NewForm.new
  end
end

