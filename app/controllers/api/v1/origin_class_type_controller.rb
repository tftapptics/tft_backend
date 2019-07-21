class Api::V1::OriginClassTypeController < ApplicationController

  def index
    render json: OriginClassTypeSerializer.new(OriginClassType.all)
  end

  def show
    render json: OriginClassTypeSerializer.new(OriginClassType.find(params[:id]))
  end

end
