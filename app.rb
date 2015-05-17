require 'trinidad'
require 'tBuilder.rb'
require 'tree'
require 'sinatra/base'


class Tee < Sinatra::Base	

	configure do
		enable :sessions
		use Rack::Deflater	
		set :server, :trinidad
		set :environment, :production
	end

	get '/' do 
		erb:index
	end
	
	get '/draw' do
  		query = params[:query]
  		TBuilder.new.build_ast_tree(query).to_json
	end
end


