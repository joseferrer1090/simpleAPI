#items_controller

class Api::V1::ItemsController < Api::V1::BaseController

  def index
    respond_with Item.all
  end

  def create
    respond_with :api, :v1, Item.create(item_params)
  end

  def destroy
    respond_with Item.destroy(params[:id])
  end

  def update
    item = Item.find(params[:id])
    Item.update_attributes(item_params)
    respond_with item, json: item
  end

  private

  def item_params
    params.permit(:id, :name, :description)
    #params.require(:item).permit(:id, :name, :description) --> no comprendo lo de arriba si
  end

end

#Este controlador es para Item y cada uno de los metodos respnde en formato json
#para el consumo desde ReactJS se debe realizar el CRUD de buena practica
#Solo falta la implementacion del JWT Jason Web Token para el Login
