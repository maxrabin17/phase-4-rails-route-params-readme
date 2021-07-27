class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find a cheese using id from URL
    # send a json response using that cheese object
    # byebug
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
  end

end
