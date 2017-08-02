defmodule TvmazeWrapper.Base do

  def process_url(url) do
    "http://api.tvmaze.com" <> url
  end
end
