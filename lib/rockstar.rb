%w{cgi rubygems hpricot active_support}.each { |x| require x }

$: << File.expand_path(File.dirname(__FILE__))

require 'rockstar/base'
require 'rockstar/version'

require 'rockstar/album'
require 'rockstar/artist'
require 'rockstar/chart'
require 'rockstar/user'
require 'rockstar/tag'
require 'rockstar/track'

require 'rockstar/simpleauth'
require 'rockstar/auth'
require 'rockstar/session'
require 'rockstar/tokenauth'
require 'rockstar/scrobble'
require 'rockstar/playing'

require 'rockstar/rest'

module Rockstar
  extend self
  
  def lastfm=(args)
    @api_key    = args["api_key"]
    @api_secret = args["api_secret"]
  end
  
  def lastfm_api_key
    @api_key
  end
  
  def lastfm_api_secret
    @api_secret
  end
end