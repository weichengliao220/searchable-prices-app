class PricesController < ApplicationController
  def index
    if params[:query].present?
      @prices = Price.search_by_model_number(params[:query])
    else
      @prices = Price.all
    end
  end
end
