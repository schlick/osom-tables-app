class ItemsController < ApplicationController
  def index
    @items = Item.page(params[:page]).per(10)#.order_by(params[:order])

    #sleep 0.5

    render partial: 'table', layout: false if request.xhr?
  end

  def show
    @item = Item.find(params[:id])
  end
end
