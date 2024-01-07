defmodule SpellChexTest do
  use ExUnit.Case
  doctest SpellChex

  test "sample exists? " do
    assert SpellChex.exists?("dog") == true
    assert SpellChex.exists?("elixir") == true
    assert SpellChex.exists?("notaword") == false
    assert SpellChex.exists?("asdfasdf") == false
  end
end
