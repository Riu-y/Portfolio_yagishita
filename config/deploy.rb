# config valid for current version and patch releases of Capistrano
#capistranoのバージョンを記載
lock "~> 3.13.0"

#capistranoのログの表示に使用
set :application, "Portfolio_yagishita"

#どのレポジトリからアプリケーションをpullするか指定
set :repo_url, "https://github.com/Riu-y/Portfolio_yagishita.git"

#デプロイ先のディレクトリを指定
set :deploy_to, "/home/ec2-user/Portfolio_yagishita"

set :rbenv_ruby, '2.5.7'

#ec2上のmaster.keyファイルを参照するように指定
set :linked_files, %w{config/master.key .env}

#共通で参照するディレクトリを指定
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/uploads", "public/system"
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
