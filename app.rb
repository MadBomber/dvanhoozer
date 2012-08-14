APP_ROOT = File.expand_path(File.dirname(__FILE__))

require 'rubygems'
require 'sinatra'
require 'haml'
require 'erb'
#require 'pp'

set :root, APP_ROOT
set :public_folder, File.dirname(__FILE__) + '/public'


#####################################
not_found { erb :'404' }
error { @error = request.env['sinatra_error'] ; erb :'500' }


#####################################
helpers do
  def prev_next(prev_page, next_page)
    s = <<EOS1
    <HR>
    <p style="font-size:40px">
    <strong>
EOS1
  
    unless prev_page.empty?
    s += <<EOS2
    <span class="left">
      <a href="/#{prev_page}">
        <=- PREV
      </a>
    </span>
EOS2
    end

    unless next_page.empty?
    s += <<EOS3
    <span class="right">
      <a href="/#{next_page}">
        NEXT -=>
      </a>
    </span>
    </p>
EOS3
    end
    
    s += <<EOS4
    </strong>
    </p>
EOS4
  
    return s
  end

end


#####################################
get '/' do
  erb :index
end

get '/index/?' do
  erb :index
end

get '/home/?' do
  erb :index
end

#####################################
get '/bio/?' do
  erb :bio
end

get '/about/?' do
  erb :bio
end


#####################################
get '/roles/?' do
  erb :roles
end

get '/roles_:name/?' do
  erb :"roles_#{params[:name]}"
end


=begin
#####################################
get '/industries/?' do
  erb :industries
end

get '/industries_:name/?' do
  erb :"industries_#{params[:name]}"
end

#####################################
get '/projects/?' do
  erb :projects
end

get '/projects_:name/?' do
  erb :"projects_#{params[:name]}"
end

#####################################
get '/technologies/?' do
  erb :technologies
end

#####################################
get '/contact/?' do
  erb :contact
end

post '/contact/?' do
#  pp params
  redirect :index
end

=end

