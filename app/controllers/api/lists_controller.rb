class Api::ListsController < ApplicationController

  def index
    @lists = current_user.lists
    render 'index.json.jbuilder'
  end

  def create
    @list = List.new(
                      name: params[:name],
                      user_id: current_user.id,
                      date: params[:date]
                    )
    if @list.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @list = List.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @list = list.find(params[:id])
    @list.name = params[:name] || @list.name
    @list.date = params[:date] || @list.date

    if @list.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    render json: {message: "Successfully removed list"}
  end
  
end
