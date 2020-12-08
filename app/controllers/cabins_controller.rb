class CabinsController < ApplicationController

    get '/cabins' do
        @cabins = Cabin.all
        erb :"cabins/index"
    end

end