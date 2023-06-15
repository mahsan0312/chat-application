set :branch, 'main'

set :deploy_to, '/var/www/projects/current'
set :rails_env, 'production'

server '16.170.219.97', user: 'deploy', roles: %w{app db web}, primary: true
set :passenger_environment_variables, {
  'PASSENGER_INSTANCE_REGISTRY_DIR' => '/var/run/passenger-instreg'
}
