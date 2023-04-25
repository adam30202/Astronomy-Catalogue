class PagesController < ApplicationController

    require 'httparty'

    def about
        @response = HTTParty.get('https://api.nasa.gov/planetary/apod?api_key=cuxOmwpr2KanSuHRAl75GBqxEWjLLqkYA9kBGqj4');
    end

end
