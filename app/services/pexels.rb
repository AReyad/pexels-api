class Pexels
  include HTTParty
  base_uri "api.pexels.com"
  @headers = { Authorization: Rails.application.credentials.dig(:pexels, :api_key) }

  def self.collection(id)
    get("/v1/collections/#{id}", headers: @headers)
  end
end
