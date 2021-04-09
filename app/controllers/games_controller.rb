require 'open-uri'

class GamesController < ApplicationController

  def new
    @random_letters = Array.new(10) { ('a'..'z').to_a.sample }
  end

  def score
    @answer = params[:answer]
    @validated_answer = validation?(@answer)
    raise
  end

  def validation?(user_input)
    JSON.parse(open("https://wagon-dictionary.herokuapp.com/#{user_input}").read)["found"]
  end

end

# .upcase.chars
