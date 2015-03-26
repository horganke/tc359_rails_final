class Character < ActiveRecord::Base
  validates_presence_of :name, :powers
end
