class SinsController < ApplicationController

  before_action :set_sin, only: [:show, :edit, :update, :destroy]


  def index
    @sins = Sin.search(params[:term])
  end

  def show
  end

  def new
    @sin = Sin.new
  end

  def create
   @sin = Sin.new(sin_params)
    if @sin.save
      flash[:success] = "Successfully created new Sin"
			redirect_to @sin
		else
			render 'new'
		end
  end

  def edit

  end

  def update
    # byebug
    if @sin.update(sin_params)
      
       flash[:success] = "Sin Successfully updated!"
      redirect_to @sin
    else
      render 'edit'
    end
  end

  def destroy
    @sin.destroy
    redirect_to root_path
  end

  private 

  def sin_params
    params.require(:sin).permit(:title, :description, :category_id, :image, :term)
  end

  def set_sin
    @sin = Sin.find(params[:id])
  end

end
