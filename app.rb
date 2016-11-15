#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
    erb :about
end

get'/visit' do
	erb :visit
end

post '/visit' do #обработка запроса

@username = params[:username]
@contact_phone = params[:contact_phone]
@visit_time = params[:visit_time]
@barber = params[:barber]



erb "OK,username is #{@username},
phone number #{@contact_phone}, 
time #{@visit_time} Цурюльнег будет #{@barber}!"

end



#get '/contacts' do
 # erb :contacts
#end`

