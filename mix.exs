defmodule LagerLogger.Mixfile do
  use Mix.Project

  def project do
    [app: :lager_logger,
     version: "1.0.3",
     elixir: "~> 1.2",
     package: package,
     description: description,
     deps: deps]
  end

  defp package do
    [maintainers: ["Martin Schurrer", "James Fish"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/PSPDFKit-labs/lager_logger"},
     files: ["lib", "mix.exs", "README.md"]]
  end

  defp description do
    """
    LagerLogger is a lager backend that forwards all log messages to Elixir's Logger.
    """
  end


  def application do
    [applications: [:lager, :logger]]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:lager, github: "basho/lager", tag: "2.0.3"},
    ]
  end
end
