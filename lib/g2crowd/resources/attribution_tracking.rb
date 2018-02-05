module G2crowd
  class AttributionTracking < Base
    def self.table_name
      "attribution_tracking"
    end

    custom_endpoint :'remote-conversions', on: :collection, request_method: :get
  end
end
