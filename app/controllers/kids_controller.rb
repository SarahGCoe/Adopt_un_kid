class KidsController < ApplicationController
  before_action :find_kid, only: [:show, :edit, :update, :destroy]

  def index
    @kids = Kid.all
  end

  def show
  end

  def new
    @kid = Kid.new
  end

  def create
    @user = current_user
    @kid = Kid.new(kid_params)
    @kid.user = @user
    if @kid.save
      redirect_to kid_path(@kid)
    else
      render :new
    end
  end

  def destroy
    @kid.destroy
    redirect_to kids_path(@kids)
  end

  def edit
  end

  def update
    @kid.update(kid_params)
    redirect_to kid_path(@kid)
  end

  private

  def find_kid
    @kid = Kid.find(params[:id])
  end

  def kid_params
    params.require(:kid).permit(:name, :age_category, :photo, :price, :description, :personality)
  end
end
