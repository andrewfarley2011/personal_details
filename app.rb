
require 'sinatra'

get '/' do
	erb :index
end

post '/name' do
	name = params[:user_name]
	redirect '/last_name?user_name=' + name
end

get '/last_name' do
	name = params[:user_name]
	erb :last_name, :locals => {:name => name}
end

post '/last_name' do 
	name = params[:user_name]
	last = params[:last_name]
	redirect '/age?user_name=' + name + '&last_name=' + last
end

get '/age' do
	name = params[:user_name]
	last = params[:last_name]
	erb :get_age, :locals => {:name => name, last:last}
end

post '/age' do 
	age = params[:age]
	last = params[:last_name]
	name = params[:user_name]
	redirect '/three_num?user_name=' + name + '&last_name=' + last + '&age=' + age
end

get '/three_num' do
	age = params[:age]
	last = params[:last_name]
	name = params[:user_name]
	erb :three_num, :locals => {name:name, last:last, age:age}
end

post '/three_num' do
	age = params[:age]
	last = params[:last_name]
	name = params[:user_name]
	num_1 = params[:number1]
	num_2 = params[:number2]
	num_3 = params[:number3]
	redirect '/hair_color?user_name=' + name + '&last_name=' + last + '&age=' + age + '&number1=' + num_1 + 
	'&number2=' + num_2 + '&number3=' + num_3
end

get '/hair_color' do
	age = params[:age]
	last = params[:last_name]
	name = params[:user_name]
	num_1 = params[:number1]
	num_2 = params[:number2]
	num_3 = params[:number3]
	erb :hair_color, :locals => {name:name, last:last, age:age, num_1:num_1, num_2:num_2, num_3:num_3}
end

post '/hair_color' do
	age = params[:age]
	last = params[:last_name]
	name = params[:user_name]
	num_1 = params[:number1]
	num_2 = params[:number2]
	num_3 = params[:number3]
	hair = params[:hair_color]
	redirect 'eye_color?user_name=' + name + '&last_name=' + last + '&age=' + age + '&number1=' + num_1 + 
	'&number2=' + num_2 + '&number3=' + num_3 + '&hair_color=' + hair
end

get '/eye_color' do
	age = params[:age]
	last = params[:last_name]
	name = params[:user_name]
	num_1 = params[:number1]
	num_2 = params[:number2]
	num_3 = params[:number3]
	hair = params[:hair_color]
	erb :eye_color, :locals => {name:name, last:last, age:age, num_1:num_1, num_2:num_2, num_3:num_3, hair:hair}
end

post '/eye_color' do
	age = params[:age]
	last = params[:last_name]
	name = params[:user_name]
	num_1 = params[:number1]
	num_2 = params[:number2]
	num_3 = params[:number3]
	hair = params[:hair_color]
	eye = params[:eye_color]
	redirect 'fav_food?user_name=' + name + '&last_name=' + last + '&age=' + age + '&number1=' + num_1 + 
	'&number2='+ num_2 + '&number3=' + num_3 + '&hair_color=' + hair + '&eye_color=' + eye 
end

get '/fav_food' do
	age = params[:age]
	last = params[:last_name]
	name = params[:user_name]
	num_1 = params[:number1]
	num_2 = params[:number2]
	num_3 = params[:number3]
	hair = params[:hair_color]
	eye = params[:eye_color]
	erb :fav_food, :locals => {name:name, last:last, age:age, num_1:num_1, num_2:num_2, num_3:num_3, hair:hair, eye:eye}
end

post '/fav_food' do
	age = params[:age]
	last = params[:last_name]
	name = params[:user_name]
	num_1 = params[:number1]
	num_2 = params[:number2]
	num_3 = params[:number3]
	hair = params[:hair_color]
	eye = params[:eye_color]
	food = params[:fav_food]
	redirect 'fav_drink?user_name=' + name + '&last_name=' + last + '&age=' + age + '&number1=' + num_1 + 
	'&number2='+ num_2 + '&number3=' + num_3 + '&hair_color=' + hair + '&eye_color=' + eye + '&fav_food=' + food
end

get '/fav_drink' do
	age = params[:age]
	last = params[:last_name]
	name = params[:user_name]
	num_1 = params[:number1]
	num_2 = params[:number2]
	num_3 = params[:number3]
	hair = params[:hair_color]
	eye = params[:eye_color]
	food = params[:fav_food]
	erb :fav_drink, :locals => {name:name, last:last, age:age, num_1:num_1, 
		num_2:num_2, num_3:num_3, hair:hair, eye:eye, food:food}
end

post '/fav_drink' do
	age = params[:age]
	last = params[:last_name]
	name = params[:user_name]
	num_1 = params[:number1]
	num_2 = params[:number2]
	num_3 = params[:number3]
	hair = params[:hair_color]
	eye = params[:eye_color]
	food = params[:fav_food]
	drink = params[:fav_drink]
	redirect 'total?user_name=' + name + '&last_name=' + last + '&age=' + age + '&number1=' + num_1 + 
	'&number2='+ num_2 + '&number3=' + num_3 + '&hair_color=' + hair + '&eye_color=' + eye + '&fav_food' + food +
	'&fav_drink' + drink
end

get '/total' do
	age = params[:age]
	last = params[:last_name]
	name = params[:user_name]
	num_1 = params[:number1]
	num_2 = params[:number2]
	num_3 = params[:number3]
	hair = params[:hair_color]
	eye = params[:eye_color]
	food = params[:fav_food]
	drink = params[:fav_drink]
	erb :total, :locals => {name:name, last:last, age:age, num_1:num_1, 
		num_2:num_2, num_3:num_3, hair:hair, eye:eye, food:food, drink:drink}
end

post '/total' do
	age = params[:age]
	last = params[:last_name]
	name = params[:user_name]
	num_1 = params[:number1]
	num_2 = params[:number2]
	num_3 = params[:number3]
	hair = params[:hair_color]
	eye = params[:eye_color]
	food = params[:fav_food]
	drink = params[:fav_drink]
	# redirect 'total?user_name=' + name + '&last_name=' + last + '&age=' + age + '&number1=' + num_1 + 
	# '&number2='+ num_2 + '&number3=' + num_3 + '&hair_color=' + hair + '&eye_color=' + eye + '&fav_food' + food +
	# '&fav_drink' + drink
end