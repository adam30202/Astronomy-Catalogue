class SearchController < ApplicationController

  def index
    @query = AstronomicalItem.ransack(params[:q])
    @astronomical_items = @query.result(distinct: true)
  end

end
