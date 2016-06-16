class SearchResultsController < ApplicationController

  def index
    @q = Menu.search(params[:q])
    @menus = @q.result

    @q = Location.search(params[:q])
    @locations = @search.result
    @q = User.search(params[:q])
    @users = @search.result
  end

  end

end
