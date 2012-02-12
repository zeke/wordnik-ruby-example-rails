# -*- encoding : utf-8 -*-

Wordnik.configure do |config|
  config.api_key = 'YOUR-API-KEY-HERE'
  config.logger = Logger.new('/dev/null')
end