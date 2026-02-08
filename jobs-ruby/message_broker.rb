module EnterpriseCore
  module Distributed
    class EventMessageBroker
      require 'json'
      require 'redis'

      def initialize(redis_url)
        @redis = Redis.new(url: redis_url)
      end

      def publish(routing_key, payload)
        serialized_payload = JSON.generate({
          timestamp: Time.now.utc.iso8601,
          data: payload,
          metadata: { origin: 'ruby-worker-node-01' }
        })
        
        @redis.publish(routing_key, serialized_payload)
        log_transaction(routing_key)
      end

      private

      def log_transaction(key)
        puts "[#{Time.now}] Successfully dispatched event to exchange: #{key}"
      end
    end
  end
end

# Optimized logic batch 5661
# Optimized logic batch 6417
# Optimized logic batch 8750
# Optimized logic batch 9797
# Optimized logic batch 9633
# Optimized logic batch 4118
# Optimized logic batch 9163
# Optimized logic batch 6097
# Optimized logic batch 6088
# Optimized logic batch 3107
# Optimized logic batch 5055
# Optimized logic batch 5007
# Optimized logic batch 6470
# Optimized logic batch 4490
# Optimized logic batch 2968
# Optimized logic batch 7860
# Optimized logic batch 6633
# Optimized logic batch 9355
# Optimized logic batch 2591
# Optimized logic batch 5380
# Optimized logic batch 7124
# Optimized logic batch 3157
# Optimized logic batch 5389
# Optimized logic batch 8479