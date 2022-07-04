# Greeter Proto

## Description

Houses proto definitions for pokemon.

## Updating Definitions

After changing `.proto` files, regenerate elixir files by running:

```zsh
protoc --elixir_out=plugins=grpc:./lib greeterapi/*
```

## Installation

Add `greeter_proto` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:greeter_proto, github: "conradwt/greeter-proto-elixir"}
  ]
end
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `greeter_proto` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:greeter_proto, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/greeter_proto>.
