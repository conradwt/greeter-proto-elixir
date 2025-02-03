defmodule GreeterProto.MixProject do
  use Mix.Project

  def project do
    [
      app: :greeter_proto,
      version: "0.1.0",
      elixir: "~> 1.18.2",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [
        :logger,
        :grpc
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowlib, "~> 2.12", override: true},
      {:google_protos, "~> 0.3.0"},
      {:grpc, "~> 0.6.0"},
      {:mint, "~> 1.5.1", override: true},
      {:protobuf, "~> 0.12.0", only: [:dev, :test], override: true}
    ]
  end
end
