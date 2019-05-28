module G2crowd
  class Base < JsonApiClient::Resource
    self.site = "https://data.g2.com/api/v1/"
    self.connection_class = CustomConnection
    self.paginator = CustomPaginator
    self.raise_on_blank_find_param = true
    class_attribute :api_token
  end
end
