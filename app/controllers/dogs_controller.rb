class DogsController < ApplicationController
  
  def index
    @dogs = Dog.all
  end
  
  def show
    @dog = Dog.find(params[:id])
  end

  def create
  end

  def new
  end

end
