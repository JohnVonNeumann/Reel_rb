class StoreController < ApplicationController
  def index
    @listings = Listing.order(:title)
  end
end
