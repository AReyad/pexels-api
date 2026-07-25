class Pexels
  include HTTParty
  base_uri "api.pexels.com"

  def initialize(key)
    @headers = { Authorization: key }
  end

  def collection(id)
    self.class.get("/v1/collections/#{id}", headers: @headers)
  end
end
