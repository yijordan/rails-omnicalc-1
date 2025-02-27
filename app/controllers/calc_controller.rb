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
    render({ :template => "calc_templates/payment"})
  end

  def random_form
    render({ :template => "calc_templates/random_form"})
  end
  def random
    render({ :template => "calc_templates/random"})
  end

end
