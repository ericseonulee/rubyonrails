class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
  end
  
  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      redirect_to @menu
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])

    if @menu.update(menu_params)
      redirect_to @menu
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def menu_params
      params.require(:menu).permit(:name)
    end
end
