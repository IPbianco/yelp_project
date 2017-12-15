class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :images
  belongs_to :user


  def self.all_data
    data = []
    self.all.each do | ind |
      data <<  { id:       ind.id,
                 name:     ind.name,
                 location: ind.description,
                 images:   ind.images.first
              }
    end
  data
  end
end
