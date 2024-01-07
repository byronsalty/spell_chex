defmodule SpellChex.FileReader do
  @moduledoc false

  def read_words_from_file(file_path) do
    file_path
    |> File.stream!()
    |> Enum.map(&String.trim/1)
    |> Enum.reject(&(&1 == ""))
  end
end
