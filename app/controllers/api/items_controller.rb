class Api::ItemsController < ApplicationController

  def index
    @items = Item.all
    render 'index.json.jbuilder'
  end

  def create
    @item = Item.new(
                      name: params[:name],
                      temperature: params[:temperature],
                      gender: params[:gender],
                      essential: params[:essential]
                    )
    if @item.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @item = Item.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @item = Item.find(params[:id])
    @item.name = params[:name] || @item.name
    @item.temperature = params[:temperature] || @item.temperature
    @item.gender = params[:gender] || @item.gender
    @item.essential = params[:essential] || @item.essential

    if @item.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    render json: {message: "Successfully removed item"}
  end

end
