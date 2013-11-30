class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find_by(id: params[:id])
  end

  def new
  end

  def create
    @order = Order.new
    @order.user_id = params[:user_id]
    @order.complete = params[:complete]

    if @order.save
      redirect_to orders_url, notice: "Order created successfully."
    else
      render 'new'
    end

    params.each do |key, value|
      splitted = key.split('_')
      if splitted.first == 'item'
        oi = OrderItem.new
        oi.order_id = @order.id
        oi.item_id = splitted.last
        oi.save
      end
    end
  end

  def edit
    @order = Order.find_by(id: params[:id])
  end

  def update
    @order = Order.find_by(id: params[:id])
    @order.user_id = params[:user_id]
    @order.complete = params[:complete]

    if @order.save
      redirect_to orders_url, notice: "Order updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @order = Order.find_by(id: params[:id])
    @order.destroy

    redirect_to orders_url, notice: "Order deleted."
  end
end
