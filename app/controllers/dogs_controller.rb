class DogsController < ApplicationController

  def index
    @dogs = Dog.all 
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end


  def create
    @dog = Dog.create(post_params(:name, :breed, :age))
    redirect_to dog_path(@dog)
  end

  def edit
	  @dog = Dog.find(params[:id])
  end
  
  def update
		@dog = Dog.find(params[:id])
	  @dog.update(post_params(:name, :breed, :age))
	  redirect_to dog_path(@dog)
	end

  private
  def post_params(*arg)
  	params.require(:dog).permit(*arg)
  end 

end
