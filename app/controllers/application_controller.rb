class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
def first_name
  :first_name
end
def categories
  @items = Item.all
    @unique_cat = @items.map{|t|t.category}.uniq.sort
end

