require 'sinatra'  
enable :sessions
get "/set" do
    session[:message] = params[:message]
    "session saved"
  end 
  get "/get" do
    session[:message]
end

get '/' do
    "My web page"
end

get '/getdoc' do
 "<!DOCTYPE html>
  <html>
    <body>
    <h1>This text will be red</h1>  
    <p1>
    Code the Dream offers free intensive training in software development to people from diverse low-income backgrounds. 
    In CTD Labs, our coders work with experienced mentors to hone those skills by building apps and technology platforms for 
    a range of startups, nonprofits and government clients. The ultimate aim of Code the Dream is to create a unique win-win, 
    where our coders gain real experience building apps that make the world a little better place, and then use that experience 
    to launch new careers with enormous opportunity for themselves, their families, and their communities.</p1>
    <style>
    h1 {
    color: red;
    background-color: yellow;
    }
    p1{
      color:red;
    }
    </style>
    </body>
  </html>
"
end

get "/logon" do
  send_file 'logon.html'
end
    
post "/logon" do
    if params[:username] == "bob" and params[:password] == "pass"
      "SUCCESS"
    else
      "FAILURE"
    end
end

get "/post_it" do
  send_file "post_it.html"
end

post "/post_it" do
    "<h1>Form Submitted</h1>"
end

get "/hello" do
  send_file "name.html"
end

post "/hello" do
    "<h1>Saved the name</h1>"
end

post '/greet' do
 "<h1>Nice to meet you #{params[:FirstName]}</h1>"
end