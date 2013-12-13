class Category < ActiveRecord::Base
  has_many :recommendations
end
