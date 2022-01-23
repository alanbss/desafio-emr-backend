# searh employee service
class SearchEmployee
  def initialize(search_string)
    @search_string = search_string
  end

  def call
    search
  end

  def search
    Employee.joins(:role)
      .where('lower(first_name) like :keyword or
        lower(last_name) like :keyword or
        lower(roles.name) like :keyword', keyword: "%#{@search_string}%")
  end
end
