defmodule CrowdScored.Score do
  use CrowdScored.Web, :model

  schema "scores" do
    field :data, :binary

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:data])
    |> validate_required([:data])
  end
end
