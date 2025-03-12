defmodule SpellChexTest do
  use ExUnit.Case
  doctest SpellChex

  setup do
    {:ok, _pid} = SpellChex.Dictionary.start_link()
    :ok
  end

  test "sample exists? " do
    assert SpellChex.exists?("dog") == true
    assert SpellChex.exists?("elixir") == true
    assert SpellChex.exists?("notaword") == false
    assert SpellChex.exists?("asdfasdf") == false
  end
end
