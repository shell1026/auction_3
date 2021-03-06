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


    #@users = User.all
    #@user = @users.map{|t|t.user_name}.uniq.sort


  end

  def new_id
    @bid = Bid.new
    @bid.item_id = params[:item_id]
    @bid.user_id = current_user.id

    @list = Bid.all

    @items = Item.all
    @unique_cat = @items.map{|t|t.category}.uniq.sort

    @bidz = Bid.all
    max_amt = @bidz.maximum("bid_amount")
    @high_bid = @bidz.find_by({bid_amount: max_amt})

  end

  def create
    @items = Item.all
    @unique_cat = @items.map{|t|t.category}.uniq.sort

    @bid = Bid.new
    @bid.item_id = params[:item_id]
    @bid.user_id = current_user.id
    @bid.bid_amount = params[:bid_amount]

    @bidz = Bid.all
    max_amt = @bidz.maximum("bid_amount")


    if @bid.save
      redirect_to "/items", :notice => "Bid created successfully."
    else
      render 'new_id'
    end

  end

  def edit
    @bid = Bid.find(params[:id])
  end

  def update
    @bid = Bid.find(params[:id])

    @bid.item_id = params[:item_id]
    @bid.user_id = params[:user_id]
    @bid.bid_amount = params[:bid_amount]

    if @bid.save
      redirect_to "/items", :notice => "Bid updated successfully."
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
