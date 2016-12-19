class SearchesController < ApplicationController

  def show
    @search = Search.new(search_params)
  end

  private

  def search_params
    params.require(:search).permit(:term)
  end

end
