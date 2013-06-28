require "rubygems"
require "bundler/setup"
require 'goliath'
require 'em-synchrony/em-mongo'
require 'em-synchrony'
require 'grape'
require './app/apis/posts'

class Application < Goliath::API

  def response(env)
    Posts.call(env)
  end

end