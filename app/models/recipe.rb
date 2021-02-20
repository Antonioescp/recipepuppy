class Recipe
  include HTTParty

  base_uri 'http://www.recipepuppy.com/api'

  def self.search recipe
  	response = get('', query: { q: recipe}, format: :plain )
  	JSON.parse response, symbolize_names: true
  end
end