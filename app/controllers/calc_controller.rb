class CalcController < ApplicationController
  def square_form
    render({ :template => "calc_templates/square_form"})
  end
end
