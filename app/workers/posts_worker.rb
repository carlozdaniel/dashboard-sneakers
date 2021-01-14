class PostWorker
  include Sneakers::Worker
  #this worker will connect to dashboard.post queue
  #env is set to nill since by default the actuall queeu name would be  dashboard.posts_development
  from_queue "dashboard.post", env: nil
  def work(raw_post)
    RacentPost.push(raw_post)
    ack!
  end
end