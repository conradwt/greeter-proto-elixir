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

## License

Greeter Proto is released under the [MIT license](./LICENSE.md).

## Copyright

Copyright &copy; 2022 - 2023 Conrad Taylor. All rights reserved.
