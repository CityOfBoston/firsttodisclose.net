class SearchController < ApplicationController
  def index
    if params[:search]
      search_return = Innovation.basic_search(params[:search])
      if search_return == []
        @results = nil
        @failed_search = params[:search]
      else
        @results = search_return
      end
    end
  end
end
