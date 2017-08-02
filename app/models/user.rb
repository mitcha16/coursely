class User < ApplicationRecord
  def self.get_all_users
    url = "https://coursely-api.herokuapp.com/api/v1/users"
    body = RestClient.get(url)
    JSON.parse(body)
  end

  def self.get_user(id)
    url = "https://coursely-api.herokuapp.com/api/v1/users/#{id}"
    body = RestClient.get(url)
    JSON.parse(body)
  end

  def self.get_assignments(id)
    url = "https://coursely-api.herokuapp.com/api/v1/users/#{id}/assignments"
    body = RestClient.get(url)
    JSON.parse(body)
  end
end
