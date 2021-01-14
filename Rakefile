# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

require 'sneakers/tasks'
namespace :rabbitmq do
  desc "setup routing"
  task :setup do
    require "bunny"

    conn = Bunny.new
    conn.start

    ch = conn.create_channel
    x = ch.fanout("blog.posts")
    #get or create exchange
    queue = ch.queue("dashboard.post", durable: true)

    queue.bind("blog.posts")
    conn.close
  end
end

Rails.application.load_tasks
