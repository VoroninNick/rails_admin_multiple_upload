class MainController < ApplicationController
  def index
    @categories = Category.where(published: true).order(index_sort: :asc).limit(4)
    @regions = WorkRegion.order(created_at: :asc )
    @publication = Publication.where(published: true).order(created_at: :desc).limit(4)
  end
end
