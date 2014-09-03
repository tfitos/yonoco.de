# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'yonoco.de'
set :repo_url, 'git@github.com:tfitos/yonoco.de.git'

set :deploy_to, "/home/fittom/projects/yonoco.de/site"

# Default value for default_env is {}
# set :default_env, {
#     'NODE_ENV' => 'production'
# }

# will define a tag to choose for deployment
#set :branch do
#  default_tag = `git tag`.split("\n").last
#
#  tag = Capistrano::CLI.ui.ask "Tag to deploy (make sure to push the tag first): [#{default_tag}] "
#  tag = default_tag if tag.empty?
#  tag
#end

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  # desc "Stop Forever"
  # task :stop do
  #   on roles :all do
  #     execute "source ~/.profile && nvm use 0.11 && forever stopall; true"
  #   end
  # end

  # desc "Start Forever"
  # task :start do
  #   on roles :all do
  #     execute "source ~/.profile && nvm use 0.11 && cd #{current_path}/feedr && forever start -c 'node --harmony' webapp.js"
  #     execute "source ~/.profile && nvm use 0.11 && cd #{current_path}/feedr && forever start -c 'node --harmony' app/helpers/jobs/mailpull-job.js"
  #     execute "source ~/.profile && nvm use 0.11 && cd #{current_path}/feedr && forever start -c 'node --harmony' app/helpers/jobs/reminder-job.js"
  #     execute "source ~/.profile && nvm use 0.11 && cd #{current_path}/feedr && forever start -c 'node --harmony' app/helpers/jobs/aggregated_newsletter.js"
  #   end
  # end

  # desc "Restart Forever"
  # task :restart do
  #   on roles :all do
  #     invoke "deploy:stop"
  #     sleep 5
  #     invoke "deploy:start"
  #   end
  # end

  # desc "Check required packages and install them"
  # task :install_packages do
  #   on roles(:all) do |host|
  #     execute "source ~/.profile && nvm use 0.11 && cd #{release_path}/feedr && npm install --production --loglevel warn"
  #   end
  # end

  # desc "use grunt to run build task"
  # task :grunt do
  #   on roles(:all) do |host|
  #     execute "source ~/.profile && nvm use 0.11 && cd #{release_path}/feedr && grunt build"
  #   end
  # end

  # after :deploy, "deploy:install_packages"
  # after :deploy, "deploy:grunt"
  # after :deploy, "deploy:restart"

end
