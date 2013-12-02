class OrderItemsController < ApplicationController

  def index
    @order_items = OrderItem.all
  end

  def show
    @order_item = OrderItem.find_by(id: params[:id])
  end

  def new
  end

  def create
    @order_item = OrderItem.new
    @order_item.order_id = params[:order_id]
    @order_item.item_id = params[:item_id]

    if @order_item.save
      redirect_to order_items_url, notice: "Order item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @order_item = OrderItem.find_by(id: params[:id])
  end

  def update
    @order_item = OrderItem.find_by(id: params[:id])
    @order_item.order_id = params[:order_id]
    @order_item.item_id = params[:item_id]

    if @order_item.save
      redirect_to order_items_url, notice: "Order item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @order_item = OrderItem.find_by(id: params[:id])
    @order_item.destroy

    redirect_to order_items_url, notice: "Order item deleted."
  end
end
