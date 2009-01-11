#############################################################
#	Application
#############################################################

set :application, "coala"
set :deploy_to, "/u/apps/#{application}"

#############################################################
#	Settings
#############################################################

default_run_options[:pty] = true
set :use_sudo, true

#############################################################
#	Servers
#############################################################

set :user, "libai"
set :domain, "chuwe.com"
server domain, :app, :web
role :db, domain, :primary => true

#############################################################
#	Git
#############################################################

set :scm, :git
set :deploy_via, :remote_cache
ssh_options[:paranoid] = false

set :repository, "git@github.com:sgove/coala.git"
set :scm_username, "sgrove"
set :scm_branch,    "master "

#############################################################
#	Passenger
#############################################################

namespace :passenger do
  desc "Restart Application"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

after :deploy, "passenger:restart"