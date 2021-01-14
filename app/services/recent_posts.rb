class ResentPosts
  KEY = "recent_posts" #redis key
  STORE_LIMIT = 5 #how many posts should be kept
  #get list of recent posts from redis
  #we need to parse each list item as json
  def self.limit(limit = STORE_LIMIT)
    $redis.lrange(KEY, 0, limit-1).map do |raw_post|
      JSON.parse(raw_post).with_indifferent_access
    end
  end

  #push new post tolist and trim it's size
  def self.push(raw_post)
    $redis.lpush(KEY, raw_post)
    $redis.ltrim(key, 0, STORE_LIMIT-1)
  end
end