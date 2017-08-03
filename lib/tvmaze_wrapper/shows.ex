defmodule TvmazeWrapper.Shows do
  alias TvmazeWrapper.Base
  alias TvmazeWrapper.Parser

  def get_show(show_id) do
    "/shows/" <> show_id
    |> Base.process_url
    |> HTTPoison.get!()
    |> Parser.parse_show()
  end

  def get_episodes(show_id) do
    "/shows/" <> show_id <> "/episodes"
    |> Base.process_url
    |> HTTPoison.get!()
    |> Parser.parse_episodes()
  end
end
