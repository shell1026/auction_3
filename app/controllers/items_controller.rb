class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @item.item_name = params[:item_name]
    @item.description = params[:description]
    @item.value = params[:value]
    @item.starting_bid = params[:starting_bid]
    @item.incr = params[:incr]
    @item.donor = params[:donor]
    @item.photo = params[:photo]
    @item.category = params[:category]

    if @item.save
      redirect_to "/items", :notice => "Item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    @item.item_name = params[:item_name]
    @item.description = params[:description]
    @item.value = params[:value]
    @item.starting_bid = params[:starting_bid]
    @item.incr = params[:incr]
    @item.donor = params[:donor]
    @item.photo = params[:photo]
    @item.category = params[:category]

    if @item.save
      redirect_to "/items", :notice => "Item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    redirect_to "/items", :notice => "Item deleted."
  end
end
