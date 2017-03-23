OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['1814539125462354'], ENV['0ebba26ac0b0bf042160ddf78b7deba2']
end
