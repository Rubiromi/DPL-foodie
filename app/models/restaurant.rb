class Restaurant < ActiveRecord::Base
  mount_uploader :logo, RestaurantLogoUploader

  has_many :noms
end
