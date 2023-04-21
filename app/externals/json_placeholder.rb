require 'net/http'

module JsonPlaceholder
  POSTS_URL = 'https://jsonplaceholder.typicode.com/posts'

  class << self
    def posts
      uri = URI.parse(URI.encode(POSTS_URL))
      response = Net::HTTP.get_response(uri)
      
      return response.body if response.is_a?(Net::HTTPSuccess)

      "#{response.code} #{response.message}"
    end
  end
end
