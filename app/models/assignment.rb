class Assignment < ApplicationRecord

  def self.get_assignments(status)
    url = "https://coursely-api.herokuapp.com/api/v1/assignments/#{status}"
    body = RestClient.get(url)
    JSON.parse(body)
  end
end
