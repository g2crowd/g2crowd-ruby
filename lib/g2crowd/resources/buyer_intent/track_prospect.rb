module G2crowd
  module BuyerIntent
    class TrackProspect < G2crowd::BuyerIntent::Base
      self.site = "https://data.g2.com/api/v1/attribution_tracking/"

      def self.table_name
        'remote-conversions'
      end
    end
  end
end
