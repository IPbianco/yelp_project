class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :images
  belongs_to :user
end
