class ArtistsController < ApplicationController
  def index
  	begin
  		render json: RSpotify::Artist.search(params[:query])
  	rescue Exception => e
  		render json: nil, status: :bad_request, location: nil
  	end
  end
end
