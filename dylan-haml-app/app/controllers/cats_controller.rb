class CatsController < ApplicationController
  before_action :ensure_authenticated
  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      flash[:notice] = "Congratulations on your new cat!"
      redirect_to cats_path
    else
      render :new
    end
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      flash[:notice] ="You changed Fluffy's stats!"
      redirect_to cats_path
    else
      render :edit
    end
  end

  def destroy
    cat = Cat.find(params[:id])
    cat.destroy
    flash[:notice] = 'Your cat ran away!'
    redirect_to cats_path
  end

  def cat_params
    params.require(:cat).permit(:name, :age, :friendly)
  end

end
