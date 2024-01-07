defmodule SpellChex do
  @moduledoc """
  Module used to invoke SpellChex.
  """
  @moduledoc since: "1.0.0"

  # use GenServer

  # alias SpellChex.FileReader

  @sample_words ["hello", "world", "elixir", "phoenix", "spell", "check", "dog", "cat"]


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
    word in @sample_words
  end

  # def start_link(_opts \\ []) do
  #   GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  # end


  # @impl true
  # def init(_) do
  #   all_words = FileReader.read_words_from_file("priv/20k.txt")
  #   {:ok, all_words}
  # end


  # @impl true
  # def handle_call({:check_exists, word}, _from, all_words) do
  #   {:reply, word in all_words, all_words}
  # end
end
