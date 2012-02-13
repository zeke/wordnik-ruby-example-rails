# -*- encoding : utf-8 -*-

Wordnik.configure do |config|
  config.api_key = ENV['WORDNIK_API_KEY']
  config.logger = Logger.new('/dev/null')
end