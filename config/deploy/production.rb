set :branch, 'main'

set :deploy_to, '/var/www/projects/'
set :rails_env, 'production'

server '16.170.219.97', user: 'deploy', roles: %w{app db web}, primary: true
