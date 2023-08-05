defmodule Greeterapi.HelloRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :name, 1, type: :string
end
defmodule Greeterapi.HelloResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.10.0"

  field :message, 1, type: :string
end
defmodule Greeterapi.GreeterService.Service do
  @moduledoc false
  use GRPC.Service, name: "greeterapi.GreeterService", protoc_gen_elixir_version: "0.10.0"

  rpc :SayHello, Greeterapi.HelloRequest, Greeterapi.HelloResponse
end

defmodule Greeterapi.GreeterService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Greeterapi.GreeterService.Service
end
