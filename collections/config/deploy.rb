set :application, "collections"
set :capfile_dir, File.expand_path('../', File.dirname(__FILE__))
set :server_class, [
  "draft_frontend",
  "frontend",
]

set :source_db_config_file, false
set :db_config_file, false

load 'defaults'
load 'ruby'
load 'deploy/assets'

set :assets_prefix, 'collections'
set :copy_exclude, [
  '.git/*',
  'public/images',
  'public/javascripts',
  'public/stylesheets',
  'public/templates'
]

after "deploy:notify", "deploy:notify:errbit"
