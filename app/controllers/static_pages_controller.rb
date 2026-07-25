class StaticPagesController < ApplicationController
  def home
    @collection = collection
  end

  private

  def collection
    Pexels.collection(params[:collection_id]) if params[:collection_id]
  end
end
