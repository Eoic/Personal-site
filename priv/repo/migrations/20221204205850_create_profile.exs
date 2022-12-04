defmodule Personal.Repo.Migrations.CreateProfile do
  use Ecto.Migration

  def change do
    create table(:profile) do
      add :name, :string
      add :position, :string
      add :location, :string

      timestamps()
    end
  end
end
