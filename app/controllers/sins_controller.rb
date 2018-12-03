class SinsController < ApplicationController

  before_action :set_sin, only: [:show, :edit, :update, :destroy]


  def index
    @sins = Sin.all.order("created_at DESC")
  end

  def show
  end

  def new
    @sin = Sin.new
  end

  def create
   @sin = Sin.new(sin_params)
    if @sin.save
			redirect_to @sin, notice: "Successfully created new Pin"
		else
			render 'new'
		end
  end

  def edit
  end

  def update
    if @sin.update(sin_params)
      redirect_to @sin, ntotice: "Sin Successfully updated!"
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
    params.require(:sin).permit(:title, :description)
  end

  def set_sin
    @sin = Sin.find(params[:id])
  end

end
