class GameController < ApplicationController
  def user_plays_rock
    $companswer = ["rock","paper","scissors"].sample
    if $companswer == "rock"
      $result = "You tied!"
      $resultlabel = "warning"
    elsif $companswer == "paper"
      $result = "You lost!"
      $resultlabel = "danger"
    elsif $companswer == "scissors"
      $result = "You won!"
      $resultlabel = "success"
    end

    render("game/play_rock.html.erb")
  end

  def user_plays_paper
    $companswer = ["rock","paper","scissors"].sample
    if $companswer == "rock"
      $result = "You won!"
      $resultlabel = "success"
    elsif $companswer == "paper"
      $result = "You tied!"
      $resultlabel = "warning"
    elsif $companswer == "scissors"
      $result = "You lost!"
      $resultlabel = "danger"
    end

    render("game/play_paper.html.erb")
  end
  
  def user_plays_scissors
    $companswer = ["rock","paper","scissors"].sample
    if $companswer == "rock"
      $result = "You lost!"
      $resultlabel = "danger"
    elsif $companswer == "paper"
      $result = "You won!"
      $resultlabel = "success"
    elsif $companswer == "scissors"
      $result = "You tied!"
      $resultlabel = "warning"
    end

    render("game/play_scissors.html.erb")
  end
end
