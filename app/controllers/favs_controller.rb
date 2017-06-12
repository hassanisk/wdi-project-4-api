class FavsController < ApplicationController
  before_action :set_fav, only: [:show, :update, :destroy]

  # GET /favs
  def index
    @favs = Fav.all

    render json: @favs
  end

  # GET /favs/1
  def show
    render json: @fav
  end

  # POST /favs
  def create
    # @fav = Fav.new(fav_params)
    @fav = @current_user.favs.create!(fav_params)

    if @fav.save
      render json: @fav, status: :created, location: @fav
    else
      render json: @fav.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favs/1
  def update
    if @fav.update(fav_params)
      render json: @fav
    else
      render json: @fav.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favs/1
  def destroy
    @fav.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fav
      @fav = Fav.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fav_params
      params.require(:fav).permit(:user_id, :bodypart, :muscelsname, :name, :desc, :rep, :image, :level, :difficulty)
    end
end
