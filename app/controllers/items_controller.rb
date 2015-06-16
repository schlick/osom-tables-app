class ItemsController < ApplicationController
  def index
    if request.xhr?
      @items = Item.page(params[:page]).per(10).order_by(params[:order])
      sleep 0.5
      render partial: 'table', layout: false if request.xhr?
    else
      @rendered_at = Time.current
    end
  end

  def show
    @item = Item.find(params[:id])
  end
end
