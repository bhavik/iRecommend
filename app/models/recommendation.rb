class Recommendation < ActiveRecord::Base
  has_many :users, :through => :userrecommendations
  has_one :categories
end
