class MonologsController < ApplicationController
  def index
    @monologs = Monolog.all
  end

  def new
    @monolog = Monolog.new
  end

  def create
    @monolog = Monolog.new(monolog_params)
    if @monolog.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @monolog = Monolog.find(params[:id])
    @comment = Comment.new
    @comments = @monolog.comments.includes(:user)
  end

  def destroy
    monolog = Monolog.find(params[:id])
    Comment.where(monolog_id: monolog.id).destroy_all
    monolog.destroy
  end

  def destroy_comment
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to root_path
    else
      redirect_to monolog_path(@comment.monolog), alert: 'コメントの削除に失敗しました'
    end
  end

  private
  def monolog_params
    params.require(:monolog).permit(:monolog).merge(user: current_user)
  end

end
