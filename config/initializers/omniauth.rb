Rails.application.config.middleware.use OmniAuth::Builder do
  provider :yandex, ENV[    'YA_AUTH_APP_ID'], ENV[    'YA_AUTH_SECRET']
  provider :github, ENV['GITHUB_AUTH_APP_ID'], ENV['GITHUB_AUTH_SECRET']
end