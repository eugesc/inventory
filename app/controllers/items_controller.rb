class ItemsController < ApplicationController
  def index
    @items  = Item.all

    @total_quantity = Item.all.sum(:quantity)

    render "items/index"
  end

  # /items/edit/:id
  def edit
    @item = Item.find(params[:id])

    render "items/edit"
  end

  # /items/update/:id
  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to "/items/#{@item.id}"
    else
      render "items/edit"
    end
  end

  def delete
    @item = Item.find(params[:id])
    @item.destroy!

    redirect_to "/items"
  end

  def new
    @item = Item.new

    render "items/new"
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to "/items"
    else
      render "items/new"
    end
  end
 
  # /items/:id
  def show
    @item = Item.find(params[:id])

    render "items/show"
  end

  def item_params
    params.require(:item).permit!
  end
end
