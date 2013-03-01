class User < ActiveRecord::Base
  attr_accessible :name, :photo

  has_many :posts
end
