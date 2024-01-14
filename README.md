# SpellChex

Created as an experiment to learn how to build libraries in Elixir to extract common functionality across projects.

The primary purpose to have an efficient way to determine if a word is in a language. 

The library will ship with a list of English words, but will have an easy mechanism to load other word sets to both support other languages and specialized cases like jargon, proper names, nsfw words, etc

## Usage

```
> SpellChex.exists?("dog")
true

> SpellChex.exists?("asdfasdf")
false
```



## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `spell_chex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:spell_chex, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/spell_checker>.

## Adding Words from txt file

```
awk '{ for (i=1; i<=NF; i++) print tolower($i) }' book.txt > words.txt
cat words.txt | sort | uniq > add_words.txt
cat priv/en.txt add_words.txt | sort | uniq > en_update.txt
```

