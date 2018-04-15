class FetchAbilities
  def call
    request = HTTP.get("https://overwatch-api.net/api/v1/ability/")
    JSON.parse(request.to_s)
  end
end
