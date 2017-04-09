defmodule CrowdScored.ScoreController do
  use CrowdScored.Web, :controller

  alias CrowdScored.Score

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def create(conn, %{"file" => file}) do
    content = Base.encode64(File.read!(file.path))
    changeset = Score.changeset(%Score{}, %{data: content})

    case Repo.insert(changeset) do
      {:ok, score} ->
        render conn, "show.json", score: score
      {:error, changeset} ->
        render conn, "error.json", changeset: changeset
    end
  end
end
