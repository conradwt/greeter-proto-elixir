defmodule Greeterapi.HelloRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Greeterapi.HelloReply do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :message, 1, type: :string
end
defmodule Greeterapi.Greeter.Service do
  @moduledoc false
  use GRPC.Service, name: "greeterapi.Greeter", protoc_gen_elixir_version: "0.10.0"

  rpc :SayHello, Greeterapi.HelloRequest, Greeterapi.HelloReply
end

defmodule Greeterapi.Greeter.Stub do
  @moduledoc false
  use GRPC.Stub, service: Greeterapi.Greeter.Service
end
