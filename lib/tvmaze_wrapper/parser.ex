defmodule TvmazeWrapper.Parser do
  def parse_show_without_cast(%{body: body}) do
    body = Poison.decode!(body)
    %{
      link: body["_links"]["self"],
      name: body["name"],
      genres: body["genres"],
      image: body["image"]["original"],
      imdb_id: body["externals"]["imdb"],
      tvdb_id: body["externals"]["thetvdb"],
      tvmaze_id: body["id"],
      network: body["network"]["name"],
      country_name: body["network"]["country"]["name"],
      premiered: body["premiered"],
      episode_duration: body["schedule"]["time"],
      status: body["status"],
      summary: body["summary"]
    }
  end

  def parse_cast(%{body: body}) do
    body
    |> Poison.decode!()
  end
end
