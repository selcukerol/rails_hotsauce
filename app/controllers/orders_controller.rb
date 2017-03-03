class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @items = Item.all
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
    @items = Item.all
  end

  # POST /orders
  # POST /orders.json
  def create
    @items = Item.all
    Order.transaction do
      item = Item.find(params[:item])
    @order = Order.create(
      user_id: current_user.id,
      cost: params[:order][:amount_of_item].to_i * item.cost,
      amount_of_item: params[:order][:amount_of_item]
      )
    orderItem = OrderItem.create(
      item_id: item.id,
      number_of_items: params[:order][:amount_of_item],
      order_id: @order.id
      )
  end

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:amount_of_item, :cost, :user_id)
    end
end
