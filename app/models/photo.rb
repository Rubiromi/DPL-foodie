class Photo < ActiveRecord::Base
  mount_uploader :image, NomPhotoUploader
  belongs_to :nom

end
