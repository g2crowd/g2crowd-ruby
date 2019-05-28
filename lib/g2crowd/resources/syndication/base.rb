module G2crowd
  module Syndication
    class Base < G2crowd::Base
      self.site = "https://data.g2.com/api/"
      self.connection_class = SyndicationConnection
    end
  end
end
