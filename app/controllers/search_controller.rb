class SearchController < ApplicationController

  def index
    @query = AstronomicalItem.ransack(params[:q])
    @astronomical_item = @query.result(distinct: true)
  end

end
