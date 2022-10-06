class MenuItemsController < ApplicationController
  def create
    @menu = Menu.find(params[:menu_id])
    @menu_item = @menu.menu_items.create(menu_item_params)
    redirect_to menu_path(@menu)
  end

  def destroy
    @menu = Menu.find(params[:menu_id])
    @menu_item = @menu.menu_items.find(params[:id])
    @menu_item.destroy
    redirect_to menu_path(@menu), status: :see_other
  end

  private
    def menu_item_params
      params.require(:menu_item).permit(:name, :price)
  end
end
