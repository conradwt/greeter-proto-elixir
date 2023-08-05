# Greeter Proto

The purpose of the repository is to house the proto definitions
for the Greeter service.

## Code Generation

Generate Elixir files from Protobuf definitions or `.proto` files by
doing the following:

```zsh
protoc --elixir_out=plugins=grpc:./lib greeterapi/*
```

Note: After changing `.proto` files, rerun the above command to
update the generated Elixir files.

## Installation

Add `greeter_proto` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:greeter_proto, github: "conradwt/greeter-proto-elixir"}
  ]
end
```

## Related repos

- [Greeter Client](https://github.com/conradwt/greeter-client-elixir)
- [Greeter Server](https://github.com/conradwt/greeter-server-elixir)

## License

Greeter Proto is released under the [MIT license](./LICENSE.md).

## Copyright

Copyright &copy; 2022 - 2023 Conrad Taylor. All rights reserved.
