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

    redirect :"landmarks/show"
  end



end
