defmodule CrowdScored.ScoreView do
  use CrowdScored.Web, :view

  def render("show.json", %{score: score}) do
    %{data: score.data}
  end

  def render("error.json", %{changeset: changeset}) do
    %{errors: changeset.errors}
  end
end
