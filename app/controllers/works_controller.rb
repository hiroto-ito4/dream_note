class WorksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]
  before_action :set_work, only: [:show, :edit, :update]

  def index
    @works = Work.all.order('created_at DESC')
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @work.comments.includes(:user)
  end

  def edit
  end

  def update
    if @work.update(work_params)
      redirect_to work_path
    else
      render :edit
    end
  end

  def destroy
    work = Work.find(params[:id])
    work.destroy
    redirect_to root_path
  end

  private

  def work_params
    params.require(:work).permit(:image, :genre_id, :title, :content, :inpression).merge(user_id: current_user.id)
  end

  def move_to_index
    @work = Work.find(params[:id])
    redirect_to action: :index if current_user.id != @work.user_id
  end

  def set_work
    @work = Work.find(params[:id])
  end
end
