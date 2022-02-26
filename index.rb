require 'sinatra'
require 'sinatra/reloader'

ROOT_DIR = File.dirname(__FILE__)

CONTENT_DIR = File.join(ROOT_DIR, 'content')

get '/' do
  if Dir.exist?(CONTENT_DIR)
    Dir.each_child(CONTENT_DIR).to_a.join(', ')
  else
    'Not found'
  end
end
