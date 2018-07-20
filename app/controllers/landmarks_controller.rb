class LandmarksController < ApplicationController

  get '/landmarks' do #Index request
    @landmarks = Landmark.all
    erb :"/landmarks/index"
  end

  get '/landmarks/new' do #create request
    erb :"landmarks/new"
  end

end
