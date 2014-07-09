class Event < ActiveRecord::Base
  mount_uploader :image, EventImageUploader
end
