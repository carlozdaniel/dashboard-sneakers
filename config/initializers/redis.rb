$redis = Redis::Namespace.new("dasboard:#{Rails.env}, redis: Rails.new")