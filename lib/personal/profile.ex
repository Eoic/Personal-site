defmodule Personal.Profile do
  use Ecto.Schema
  import Ecto.Changeset

  schema "profile" do
    field :location, :string
    field :name, :string
    field :position, :string

    timestamps()
  end

  @doc false
  def changeset(profile, attrs) do
    profile
    |> cast(attrs, [:name, :position, :location])
    |> validate_required([:name, :position, :location])
  end
end
