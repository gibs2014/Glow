class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find_by(id: params[:id])
  end

  def new
  end

  def create
    @item = Item.new
    @item.name = params[:name]
    @item.category = params[:category]
    @item.colour = params[:colour]
    @item.brand = params[:brand]
    @item.price = params[:price]
    @item.size = params[:size]
    @item.body_shape = params[:body_shape]
    @item.material = params[:material]
    @item.image = params[:image]
    @item.purchase_link = params[:purchase_link]

    if @item.save
      redirect_to items_url, notice: "Item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find_by(id: params[:id])
  end

  def update
    @item = Item.find_by(id: params[:id])
    @item.name = params[:name]
    @item.category = params[:category]
    @item.colour = params[:colour]
    @item.brand = params[:brand]
    @item.price = params[:price]
    @item.size = params[:size]
    @item.body_shape = params[:body_shape]
    @item.material = params[:material]
    @item.image = params[:image]
    @item.purchase_link = params[:purchase_link]

    if @item.save
      redirect_to items_url, notice: "Item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy

    redirect_to items_url, notice: "Item deleted."
  end
end
