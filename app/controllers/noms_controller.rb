class NomsController < ApplicationController
  before_action :set_restaurant
  before_action :set_nom, only: [:show, :edit, :update, :destroy]

  # GET /noms
  # GET /noms.json
  def index
    @noms = @restaurant.noms.page(params[:page]).per(5)
  end

  # GET /noms/1
  # GET /noms/1.json
  def show
  end

  # GET /noms/new
  def new
    @nom = Nom.new
  end

  # GET /noms/1/edit
  def edit
  end

  # POST /noms
  # POST /noms.json
  def create
    @nom = @restaurant.noms.build(nom_params)

    respond_to do |format|
      if @nom.save
        format.html { redirect_to root_path, notice: 'Nom was successfully created.' }
        format.json { render :show, status: :created, location: @nom }
      else
        format.html { render :new }
        format.json { render json: @nom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noms/1
  # PATCH/PUT /noms/1.json
  def update
    respond_to do |format|
      if @nom.update(nom_params)
        format.html { redirect_to @nom, notice: 'Nom was successfully updated.' }
        format.json { render :show, status: :ok, location: @nom }
      else
        format.html { render :edit }
        format.json { render json: @nom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noms/1
  # DELETE /noms/1.json
  def destroy
    @nom.destroy
    respond_to do |format|
      format.html { redirect_to noms_url, notice: 'Nom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_nom
      @nom = Nom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nom_params
      params.require(:nom).permit(:name, :delicious)
    end
end
