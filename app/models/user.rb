class User < ActiveRecord::Base
  has_many :recommendations
end
