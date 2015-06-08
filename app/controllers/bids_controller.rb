class BidsController < ApplicationController
  def index
    @bids = Bid.all
    @items = Item.all
    @unique_cat = @items.map{|t|t.category}.uniq.sort
  end

def categories
  @items = Item.all
  @unique_cat = @items.map{|t|t.category}.uniq.sort
end

  def show
    @bid = Bid.find(params[:id])
    @items = Item.all
    @unique_cat = @items.map{|t|t.category}.uniq.sort
  end

  def new
    @bid = Bid.new
    @items = Item.all
    @unique_cat = @items.map{|t|t.category}.uniq.sort
  end

  def new_id
    @bid = Bid.new
    @bid.item_id = params[:id]
    @bid.user_name = current_user.user_name

    @items = Item.all
    @unique_cat = @items.map{|t|t.category}.uniq.sort
  end

  def create
    @items = Item.all
    @unique_cat = @items.map{|t|t.category}.uniq.sort

    @bid = Bid.new
    @bid.item_id = params[:item_id]
    @bid.user_name = params[:user_name]
    @bid.bid_amount = params[:bid_amount]

    if @bid.save
      redirect_to "/items", :notice => "Bid created successfully."
    else
      render 'new'
    end

  end

  def edit
    @bid = Bid.find(params[:id])
  end

  def update
    @bid = Bid.find(params[:id])

    @bid.item_id = params[:item_id]
    @bid.user_name = params[:user_name]
    @bid.bid_amount = params[:bid_amount]

    if @bid.save
      redirect_to "/bids", :notice => "Bid updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @bid = Bid.find(params[:id])

    @bid.destroy

    redirect_to "/bids", :notice => "Bid deleted."
  end
end
