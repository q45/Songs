require 'sinatra'
require 'slim'
require 'sass'
require './song'

get('/styles.css'){scss :styles}

get '/' do
	@title = "Home Page"
	slim :home

end

get '/about' do
	slim :about
end

get '/contact' do
	slim :contact
end


not_found do 
	slim :not_found, :layout => :special

end