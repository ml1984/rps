class RockPaperScissorsController < ApplicationController
  def new
  end

  def cool
    render json: {msg: 'awesomeness!!!!!!!!'}
  end
end
