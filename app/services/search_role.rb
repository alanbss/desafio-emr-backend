# search role service
class SearchRole
  def initialize(search_string)
    @search_string = search_string
  end

  def call
    search
  end

  def search
    Role.where('lower(name) like :keyword', keyword: "%#{@search_string}%")
  end
end
