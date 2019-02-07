class CustomConnection < JsonApiClient::Connection
  def run(request_method, path, params: nil, headers: {}, body: nil)
    token = headers.fetch(:api_token) { G2crowd::Base.api_token }
    headers["Authorization"] = "Token token=#{token}"
    super(request_method, path, params: params, headers: headers, body: body)
  end
end
