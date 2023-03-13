class AroundsController < ApplicationController
  before_action :set_around, only: [:show, :edit, :update]

  def index
    @arounds = Around.all
  end

  def new
    @around = Around.new
  end

  def create
    @around = Around.new(around_params)
    if @around.save
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
    if @around.update(around_params)
      redirect_to around_path(@around)
    else
      render :edit
    end
  end


  private
  def around_params
    params.require(:around).permit(:a_name, :a_postnum, :prefecture_id, :a_address, :a_phone, :a_start_time, :a_close_time, :a_rule, :a_other)
  end

  def set_around
    @around = Around.find(params[:id])
  end

end
