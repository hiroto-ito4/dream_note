class WorksController < ApplicationController
  before_action :move_to_index, except: [:index,:show]

  def index
    @works = Work.all
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @work = Work.find(params[:id])
  end

  def edit
  end

  def update
  end


  private

  def work_params
    params.require(:work).permit(:image, :genre_id, :title, :content, :inpression).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end

