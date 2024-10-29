class PageController < ApplicationController
  def home
    render({ :template => "game_templates/home" })
  end

  def dice_roll
    @num_dice = params.fetch("param_one").to_i
    @sides = params.fetch("param_two").to_i
    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end 

    render({ :template => "game_templates/dice_roll" })
  end

end
