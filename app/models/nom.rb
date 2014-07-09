class Nom < ActiveRecord::Base
  belongs_to :restaurant
  has_many :photos
end
