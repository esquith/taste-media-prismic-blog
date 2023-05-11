require 'prismic'

class PrismicService
  def self.api
    Prismic.api(ENV['PRISMIC_API_URL'])
  end

  def self.fetch_posts
    response = api.query(Prismic::Predicates.at('document.type', 'post'))
    response.results.map do |result|
      Post.create(
        title: result['title'].as_text,
        content: result['content'].as_text
      )
    end
  end
end
