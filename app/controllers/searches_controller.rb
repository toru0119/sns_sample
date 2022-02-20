class SearchesController < ApplicationController
  def search
    @users = User.search(params[:keyword])
    redirect_to search_path
  end
end
