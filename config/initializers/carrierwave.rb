CarrierWave.configure do |config|
if Rails.env.development?
config.storage = :file
else
config.storage = :fog
config.fog_credentials = {
:provider => 'AWS',
:aws_access_key_id => ENV['AWS_ACCESS_KEY'],
:aws_secret_access_key => ENV['AWS_SECRET_KEY']
}
 
config.fog_directory = ENV['AWS_BUCKET']
end
end