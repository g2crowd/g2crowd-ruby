module G2crowd
  module BuyerIntent
    class RemoteEventStream < G2crowd::BuyerIntent::Base
      def self.table_name
        'remote-event-streams'
      end
    end
  end
end
