defmodule Moments.Entries.Moment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "moments" do
    field :body, :string

    timestamps()
  end

  @doc false
  def changeset(moment, attrs) do
    moment
    |> cast(attrs, [:body])
    |> validate_required([:body])
  end
end
