class Character < ActiveRecord::Base
  validates_presence_of :name, :powers

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("lower(name) like ? OR lower(powers) like ?", "%#{query.downcase}%" , "%#{query.downcase}%")
  end
end
