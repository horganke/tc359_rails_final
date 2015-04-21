class Character < ActiveRecord::Base
  validates_presence_of :name, :powers

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ? OR powers like ?", "%#{query}%" , "%#{query}%")
  end
end
