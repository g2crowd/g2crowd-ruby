class SyndicationConnection < JsonApiClient::Connection
  def run(request_method, path, params: nil, headers: {}, body: nil)
    token = headers.fetch(:api_token) { G2crowd::Base.api_token }
    headers["Authorization"] = "Token token=#{token}"

    if date = params[:filter][:date]
      path = [date, 'syndication', path].join("/")
    else
      raise ClientError, 'Date parameter required in form YYYY-MM-DD'
    end

    super(request_method, path, params: params, headers: headers, body: body)
  end
end
