defmodule TvmazeWrapper.Cast do
  alias TvmazeWrapper.Base
  alias TvmazeWrapper.Parser

  def get_cast(show_id) do
    "/shows/" <> show_id <> "/cast"
    |> Base.process_url()
    |> HTTPoison.get!()
    |> Parser.parse_cast()
  end
end
