class SearchesController < ApplicationController

  def index
    if params[:search]
      search = params[:search]
      @response_data = HTTParty.get("https://www.rijksmuseum.nl/api/en/collection?q=" + search + "&key=AC2zG03l&format=json")
      render :json => {data: @response_data}
    else
      randomPage = rand(1...30000)
      @response_data = HTTParty.get("https://www.rijksmuseum.nl/api/en/collection?key=AC2zG03l&format=json&imgonly=true&p=#{randomPage}")
      render :json => {data: @response_data}
    end
  end

end
