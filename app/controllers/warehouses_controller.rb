class WarehousesController < ApplicationController
  before_action :set_warehouse, only: [:show, :edit, :update]

  def index
    @warehouses = Warehouse.all
    @arounds = Around.all
    @monologs = Monolog.all
    @users = User.all
  end

  def new
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)
    if @warehouse.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @warehouse.update(warehouse_params)
      redirect_to warehouse_path(@warehouse)
    else
      render :edit
    end
  end


  private
  def warehouse_params
    params.require(:warehouse).permit(:w_name, :w_postnum, :prefecture_id, :w_address, :phone, :w_start_time, :w_close_time, :w_stock_type_id, :rule, :other)
  end

  def set_warehouse
    @warehouse = Warehouse.find(params[:id])
  end


end
