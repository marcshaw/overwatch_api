class FetchHeros
  def call
    request = Http.get("https://overwatch-api.net/api/v1/hero/")
    JSON.parse(request.to_s)
  end
end
