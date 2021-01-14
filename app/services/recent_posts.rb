class ResenPosts
  KEY = "recent_posts" #redis key
  STORE_LIMIT = 5 #how many posts should be kept
  #get list of recentposts from redis
  def self.limit(limit = STORE_LIMIT)
    $redis.lrange(KET, 0, limit-1).map do |raw_post|
      JSON.parse(raw_post).with_indifferent_access
    end
  end

  def self.push(raw_post)
    $redis.lpush(KET, raw_post)
    $redis.ltrim(key, 0, STORE_LIMIT-1)
  end
end