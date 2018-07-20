class LandmarksController < ApplicationController

  get '/landmarks' do #Index request
    @landmarks = Landmark.all
    erb :"/landmarks/index"
  end

  get '/landmarks/new' do #create request
    erb :"landmarks/new"
  end

  post '/landmarks' do #create and redirect
    @landmark = Landmark.create(params[:landmark])
    
    redirect :"landmarks/#{@landmark.id}"
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])
    erb :"landmarks/show"
  end
  
end
