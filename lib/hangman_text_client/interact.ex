defmodule HangmanTextClient.Interact do

  alias HangmanTextClient.State

  def start() do
    Hangman.new_game()
    |> setup_state()
    |> IO.inspect
  end

  defp setup_state(game) do
    %State{
      game_service: game,
      tally: Hangman.tally(game),
    }
  end
end