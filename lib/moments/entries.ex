defmodule Moments.Entries do
  @moduledoc """
  The Entries context.
  """

  import Ecto.Query, warn: false
  alias Moments.Repo

  alias Moments.Entries.Moment

  @doc """
  Returns the list of moments.

  ## Examples

      iex> list_moments()
      [%Moment{}, ...]

  """
  def list_moments do
    Repo.all(Moment)
  end

  @doc """
  Gets a single moment.

  Raises `Ecto.NoResultsError` if the Moment does not exist.

  ## Examples

      iex> get_moment!(123)
      %Moment{}

      iex> get_moment!(456)
      ** (Ecto.NoResultsError)

  """
  def get_moment!(id), do: Repo.get!(Moment, id)

  @doc """
  Creates a moment.

  ## Examples

      iex> create_moment(%{field: value})
      {:ok, %Moment{}}

      iex> create_moment(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_moment(attrs \\ %{}) do
    %Moment{}
    |> Moment.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a moment.

  ## Examples

      iex> update_moment(moment, %{field: new_value})
      {:ok, %Moment{}}

      iex> update_moment(moment, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_moment(%Moment{} = moment, attrs) do
    moment
    |> Moment.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a moment.

  ## Examples

      iex> delete_moment(moment)
      {:ok, %Moment{}}

      iex> delete_moment(moment)
      {:error, %Ecto.Changeset{}}

  """
  def delete_moment(%Moment{} = moment) do
    Repo.delete(moment)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking moment changes.

  ## Examples

      iex> change_moment(moment)
      %Ecto.Changeset{data: %Moment{}}

  """
  def change_moment(%Moment{} = moment, attrs \\ %{}) do
    Moment.changeset(moment, attrs)
  end
end
