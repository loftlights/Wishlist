class WishesController < ApplicationController
  before_action :set_wish, only: [:show, :edit, :update, :destroy]

  def index
    @wishes = Wish.all
  end

  def show
  end

  def new
    @wish = Wish.new
  end

  def create
    @wish = Wish.new(wish_params)
    @wish.user = current_user
    if @wish.save
      redirect_to wishes_path
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private

  def wish_params
    params.require(:wish).permit(:title, :description, :total_price, :price_chunks, :wish_image)
  end
end
