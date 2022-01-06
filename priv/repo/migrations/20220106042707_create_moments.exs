defmodule Moments.Repo.Migrations.CreateMoments do
  use Ecto.Migration

  def change do
    create table(:moments) do
      add :body, :text

      timestamps()
    end
  end
end
