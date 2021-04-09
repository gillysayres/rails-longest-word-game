require 'open-uri'

class GamesController < ApplicationController

  def new
    @random_letters = Array.new(10) { ('a'..'z').to_a.sample }
  end

  def score
    @answer = params[:answer]
    @validated_answer = validation?(@answer)
      # if validation?(@answer)
      #   score = 1
      # else
      #   score = 0
      # end
    raise
  end

  def validation?(user_input)
    # url = "https://wagon-dictionary.herokuapp.com/#{user_input}"
    # url = "https://wagon-dictionary.herokuapp.com/#{user_input}"
    # serialized_answer = open(url).read
    # JSON.parse(open(url).read)["found"]
    JSON.parse(open("https://wagon-dictionary.herokuapp.com/#{user_input}").read)["found"]
    # JSON.parse(serialized_answer)["found"]
    # validated_answer = JSON.parse(serialized_answer)
    # validated_answer["found"]
  end

end
