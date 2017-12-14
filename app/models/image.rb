require 'carrierwave/orm/activerecord'
require 'carrierwave'
class Image < ApplicationRecord
  mount_uploader :source, ImageUploader
  belongs_to :restaurant
end
