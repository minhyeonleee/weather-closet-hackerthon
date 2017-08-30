require 'carrierwave/orm/activerecord'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    # aws_access_key_id:     "#{ENV['AWS_KEY']}",                     # required
    # aws_secret_access_key: "#{ENV['AWS_SECRET']}",                         # required
    aws_access_key_id: Figaro.env.CLOSET_AWS_KEY,
    aws_secret_access_key: Figaro.env.CLOSET_AWS_SECRET,
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'weathercloset'                          # required
end