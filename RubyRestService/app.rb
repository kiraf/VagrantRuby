#add Sinatra web application library functions to ruby script
require 'sinatra'
require 'erb'
set :bind, '0.0.0.0'
#create web service with URL of /hi that returns "Hello Kira!" when visiting it
get '/hi' do
	"Hello Kira!"
end
get '/hello1' do
  my_page = <<EOS
  <html>
    <body>
	  <p><%= 'Hello ERB!' %></p>
	</body>
  </html>
EOS
ERB.new(my_page).result(binding)
end
get '/hello2' do
  my_page = <<EOS
  <html>
    <body>
	  <p>This is<sub> <font size="3" color="blue">blue</font> subscript</sub> and <sup>superscript</sup></p>
	</body>
  </html>
EOS
ERB.new(my_page).result(binding)
end
get '/drink' do
	erb :input_form
end

post '/drink' do
	drink = params[:drink] || "drink"
	name = params[:name] || "Nobody"
	erb :output_form, :locals => {'drink' => drink, 'name' => name}	
end
