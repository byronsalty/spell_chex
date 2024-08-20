defmodule SpellChex.Dictionary do
  @moduledoc """
  Module used to create a dictionary of words in a GenServer.

  This module must be started by the host application before it can be used.
  """
  @moduledoc since: "1.0.0"

  use GenServer

  alias SpellChex.FileReader

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
    GenServer.call(__MODULE__, {:check_exists, word})
    # word in @sample_words
  end

  def start_link(_opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  @impl true
  def init(_) do
    path =
      if File.exists?("/app/lib/spell_chex-0.0.23/priv/en.txt") do
        "/app/lib/spell_chex-0.0.23/priv/en.txt"
      else
        Path.join([__DIR__, "../../priv/en.txt"]) |> Path.absname()
      end

    all_words = FileReader.read_words_from_file(path)
    {:ok, all_words}
  end

  @impl true
  def handle_call({:check_exists, word}, _from, all_words) do
    {:reply, word in all_words, all_words}
  end
end
