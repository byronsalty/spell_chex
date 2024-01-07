defmodule SpellChex do
  @moduledoc """
  Module used to invoke SpellChex.
  """
  @moduledoc since: "1.0.0"

  alias SpellChex.Dictionary

  # @sample_words ["hello", "world", "elixir", "phoenix", "spell", "check", "dog", "cat"]


  @doc """
  Determines if a given `word` is in the list of known words.

  Returns `true` or `false`.

  ## Examples

      iex> SpellChex.exists?("dog")
      true

      iex> SpellChex.exists?("asdfas")
      false

  """
  @doc since: "1.3.0"
  def exists?(word) do
    # GenServer.call(__MODULE__, {:check_exists, word})
    # word in @sample_words
    Dictionary.exists?(word)
  end
end
