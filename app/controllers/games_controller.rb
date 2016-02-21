class GamesController < ApplicationController
  def index
  	@games = Game.all
  end

  def show
  	@game = Game.find(params[:id])
  end

  def new
  	@game = Game.new
  end

  def edit
  	@game = Game.find(params[:id])
  end

  def create
  	@game = Game.new(game_params)

  	if @game.save
  		redirect_to games_url
  	else
  		render :new
  	end
  end

  def update
  	@game = Game.find(params[:id])

  	if @game.update_attributes(game_params)
  		redirect_to product_path(@game)
  	else
  		render :edit
  	end
  end

  def destroy
  	@game = Game.find(params[:id])
  	@product.destroy
  	redirect_to games_path
  end

  private
  def game_params
  	params.require(:game).permit(:title, :capacity, :price_in_cents, :code)
  end
end
