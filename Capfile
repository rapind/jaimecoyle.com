load 'deploy'

set :application, "jaimecoyle.com"
set :deploy_to, "/var/www/#{application}"
set :deploy_via, :copy
ssh_options[:port] = 30000
set :repository, "build"
set :scm, :none
set :copy_compression, :gzip
set :use_sudo, false
set :user, 'deploy'

role :web, 'jaimecoyle.com'

# this tells capistrano what to do when you deploy
namespace :deploy do

  desc "A macro-task that updates the code and fixes the symlink."
  task :default do
    transaction do
      build_site
      update_code
      create_symlink
    end
  end

  task :build_site do
    run_locally 'rm -rf build'
    run_locally 'middleman build'
  end

  task :update_code, :except => { :no_release => true } do
    on_rollback { run "rm -rf #{release_path}; true" }
    strategy.deploy!
  end

  task :after_deploy do
    cleanup
  end

end
