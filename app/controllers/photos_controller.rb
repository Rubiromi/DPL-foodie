class PhotosController < ApplicationController
  before_action :get_the_nom

  def index
    @photos = @nom.photos
    @photo = @nom.photos.build
  end

  def create
    @photo = @nom.photos.build(photo_params)
    if @photo.save
      redirect_to nom_photos_path(@nom)
    else
      render :index
    end
  end

  private

  def get_the_nom
    @nom = Nom.find(params[:nom_id])
  end

  def photo_params
    params.require(:photo).permit(:image)
  end
end
