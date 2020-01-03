require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'database.db'
)

ActiveRecord::Base.logger = Logger.new STDERR

after do
  ActiveRecord::Base.connection.close
end

class Product < ActiveRecord::Base
end

# binding.pry
# puts "stop here"


#Homepage
get '/' do
  erb :home
end


#READ Routes
#Index of all results
get '/products' do

  @products = Product.all

  erb :index
end

#individual results
get '/products/:product_id' do


  erb :show
end
