$redis = Redis.new(:host => 'localhost', :port => 6379)
Redis.current = Redis.new(:host => '127.0.0.1', :port => 6379)