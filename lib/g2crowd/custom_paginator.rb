class CustomPaginator < JsonApiClient::Paginating::Paginator
  self.per_page_param = 'size'
  self.page_param = "number"
end
