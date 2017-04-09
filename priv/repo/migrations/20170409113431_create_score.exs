defmodule CrowdScored.Repo.Migrations.CreateScore do
  use Ecto.Migration

  def change do
    create table(:scores) do
      add :data, :binary

      timestamps()
    end

  end
end
