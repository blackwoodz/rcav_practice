class CalculationsController < ApplicationController
  def instructions
  end

  def square
    @num = params[:num].to_i
    @squared = @num*@num
  end

  def sqrt
    @num = params[:num].to_i
    @sqrt = Math.sqrt(@num)
  end

  def rand
    @min = params[:min].to_i
    @max = params[:max].to_i
    @rand = Random.new.rand(@min..@max)
  end

  def payment
    @apr = params[:interest].to_f/100
    @years = params[:years].to_i
    @principal = params[:principal].to_i

    rate = @apr/12/100
    months = @years*12
    if rate == 0
      @monthly_payment = (@principal/months)
    else
      @monthly_payment = ((rate*@principal*(1+rate)**months)/((1+rate)**months - 1))
    end

  end
end
