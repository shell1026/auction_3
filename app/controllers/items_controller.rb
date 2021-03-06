class ItemsController < ApplicationController
  def categories
    @item = Item.find(params[:category])
  end

  def index
    @items = Item.all
    @unique_cat = @items.map{|t|t.category}.uniq.sort
    @bid = Bid.all

  end

  def cat
    @sort = Item.all
    @item = @sort.sort_by {|obj| obj.category}

    @items = Item.all
    @unique_cat = @items.map{|t|t.category}.uniq.sort
  end

  def show
    @item = Item.find(params[:id])

    @items = Item.all
    @unique_cat = @items.map{|t|t.category}.uniq.sort

    @bid = Bid.all
    max_amt = @item.bids.maximum("bid_amount")
    @high_bid = @item.bids.find_by({bid_amount: max_amt})
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
