class CalcController < ApplicationController
  def square_form
    render({ :template => "calc_templates/square_form"})
  end
  def square
    @input = params.fetch("number")
    @output = @input.to_f ** 2
    render({ :template => "calc_templates/square"})
  end

  def sqrt_form
    render({ :template => "calc_templates/sqrt_form"})
  end
  def sqrt
    @input = params.fetch("number")
    @output = @input.to_f ** 0.5
    render({ :template => "calc_templates/sqrt"})
  end

  def payment_form
    render({ :template => "calc_templates/payment_form"})
  end
  def payment
    @apr = params.fetch("user_apr").to_f.to_fs(:percentage, { :precision =>4 })
      @r = params.fetch("user_apr").to_f / 1200
    @years = params.fetch("user_years").to_i
      @n = @years * 12
    @pv = params.fetch("user_pv").to_f.to_fs(:currency)
    @numerator = @r * params.fetch("user_pv").to_f
    @denominator = 1 - ((1 + @r) ** (-1 * @n))
    @payment = @numerator / @denominator
    render({ :template => "calc_templates/payment"})
  end

  def random_form
    render({ :template => "calc_templates/random_form"})
  end
  def random
    render({ :template => "calc_templates/random"})
  end

end
