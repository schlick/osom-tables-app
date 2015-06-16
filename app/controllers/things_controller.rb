class ThingsController < ApplicationController
  def index
    @things = Thing.page(params[:page]).per(10).order_by(params[:order])

    sleep 1

    render partial: 'table', layout: false if request.xhr?
  end

  def show
    @thing = Thing.find(params[:id])
  end
end
