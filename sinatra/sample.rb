require 'sinatra'
require 'sinatra/reloader'
require 'active_record'


ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: './bbs.db'
)

class Comment < ActiveRecord::Base
  validates :body, presence: true
end



get '/' do
    @title = "MySite"
    @comments = Comment.all
     erb :index
end

get '/about' do
    @title = "About MySite"
    erb :about
end

post '/create' do 
  @comment = Comment.create(body: params[:body])
  redirect to("/")
end

post '/destroy' do
  Comment.find(params[:id]).destroy
end




