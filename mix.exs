defmodule GreeterProto.MixProject do
  use Mix.Project

  def project do
    [
      app: :greeter_proto,
      version: "0.1.0",
      elixir: "~> 1.15.4",
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
      {:grpc, "~> 0.6.0"},
      {:google_protos, "~> 0.3.0"},
      # 2.9.0 fixes some important bugs, so it's better to use ~> 2.9.0
      # {:cowlib, "~> 2.9.0", override: true},
      {:cowlib, "~> 2.12", override: true},
      {:mint, "~> 1.5.1", override: true}
    ]
  end
end
