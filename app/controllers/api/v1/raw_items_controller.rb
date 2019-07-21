class Api::V1::RawItemsController < ApplicationController

  def index
    render json: RawItemsSerializer.new(RawItem.all)
  end

  def show
    render json: RawItemsSerializer.new(RawItem.find(params[:id]))
  end
  
end
