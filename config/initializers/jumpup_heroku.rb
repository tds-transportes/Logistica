Jumpup::Heroku.configure do |config|
  config.app = 'logistica'
end if Rails.env.development?