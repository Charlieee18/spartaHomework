class VideosController < Sinatra::Base
	# sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end

  # $videos = [{
  #     id: 0,
  #     title: "Video 1",
  #     description: "This is the first video",
  #     url: "www.youtube.com"
  # },
  # {
  #     id: 1,
  #     title: "Video 2",
  #     description: "This is the second video",
  #     url: "www.google.com"
  # },
  # {
  #     id: 2,
  #     title: "Video 3",
  #     description: "This is the third video",
  #     url: "www.facebook.com"
  # }];

   get '/' do

      @title = "Videos"

      @videos = Video.all
  
      erb :'videos/index'
  
  end

  get '/new'  do

    # create an empty video
    @video = Video.new

    erb :'videos/new'
    
  end
    
  get '/:id' do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single video object available in the template
    @video = Video.find(id)
    
    erb :'videos/show'
    
  end
    
  post '/' do
   
   video = Video.new
   video.title = params[:title]
   video.description = params[:description]
   video.url = params[:url]
   video.save
   redirect "/"
    
  end
    
  put '/:id'  do
    
    # data is gathered in the params object
    id = params[:id].to_i
      
    # get the video object from our data store
    video = Video.find(id)
      
    # update the values of the object with data from the request
    video.title = params[:title];
    video.description = params[:description];
      
    # save the video back to our data store ( at the spot it came from this time )
    video.save
      
    # redirect the user to a GET route. We'll go back to the INDEX.
    redirect "/";
    
  end
    
  delete '/:id'  do
    
    # get the ID
    id = params[:id].to_i

    # delete the video from the array
    Video.destroy(id)

    # redirect back to the homepage
    redirect "/"
    
  end
    
  get '/:id/edit'  do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single video object available in the template
    @video = Video.find(id)

    erb :'videos/edit'
    
  end

end
