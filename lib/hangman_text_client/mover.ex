defmodule HangmanTextClient.Mover do

  alias HangmanTextClient.State

  def make_move(game = %State{}) do
  { game_service, tally } = Hangman.make_move(game.game_service, game.guess)
  %State{ game | game_service: game_service, tally: tally }
  end
end