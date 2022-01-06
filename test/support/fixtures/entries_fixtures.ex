defmodule Moments.EntriesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Moments.Entries` context.
  """

  @doc """
  Generate a moment.
  """
  def moment_fixture(attrs \\ %{}) do
    {:ok, moment} =
      attrs
      |> Enum.into(%{
        body: "some body"
      })
      |> Moments.Entries.create_moment()

    moment
  end
end
