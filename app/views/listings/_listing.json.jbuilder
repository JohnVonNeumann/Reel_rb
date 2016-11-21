json.extract! listing, :id, :title, :description, :image_url, :price, :location, :created_at, :updated_at
json.url listing_url(listing, format: :json)