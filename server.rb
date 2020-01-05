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
  belongs_to :collection
  belongs_to :type
end

class Collection < ActiveRecord::Base
  has_many :products
  has_many :types, through: :products
end

class Type < ActiveRecord::Base
  has_many :products
  has_many :collections, through: :products
end

class User < ActiveRecord::Base
end


# binding.pry
# puts "stop here"


#Homepage
get '/' do
  erb :home
end

# CREATE
get '/products/new' do

  @types = Type.all
  @collections = Collection.all

  erb :new
end


post '/products' do

  Product.create(
    type_id: params[:type_id],
    collection_id: params[:collection_id],
    product_name: params[:product_name],
    description: params[:description],
    price: params[:price],
    image: params[:image]
  )

  redirect '/products'
end



#READ Routes
#Index of all results
get '/products' do

  @products = Product.all

  erb :index_products
end

get '/collections' do

  @collections = Collection.all

  erb :index_collections
end



#individual results
get '/products/:id' do

  @products = Product.find params[:id]

  erb :show_product
end

get '/collections/:id' do

  @products = Product.all
  @collections = Collection.find params[:id]

  erb :show_collection
end

# # Login page
# get '/login' do
#
#   erb :login
# end
#
# post '/login' do
#
#   # @users = User.all
#
#   # query db here
      #
      # loop through users table
      # if params[:username] == @users['username']
      #   && params[:password] == @users['password']
      # then redirect

      # params[:username] = the value that is entered into the field
      # username: symbol for checking table/hash User using active record
#
#   redirect '/products/new'
# end
