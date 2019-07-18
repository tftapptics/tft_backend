class Api::V1::ChampionsController < ApplicationController

  def index
    # render json: OriginClassTypeSerializer.new(OriginClassType.all)

    render json: ChampionsSerializer.new(Champion.all)
  end

  def show
    render json: ChampionsSerializer.new(Champion.find(params[:id]))
  end

end
