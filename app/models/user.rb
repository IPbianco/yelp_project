class User < ApplicationRecord
  has_many :restaurants
  has_many :reviews
end
