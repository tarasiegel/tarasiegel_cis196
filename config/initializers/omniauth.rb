OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '557862167615399', '6881f90160c616756397e6ff1bd179bc'
end