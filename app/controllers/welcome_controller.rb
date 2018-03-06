class WelcomeController < ApplicationController
  def index
    result = {}
    result =
        case  params[:name]
        when "hello"
            {status: 200, value: "world"}
        when "iorem"
            {status: 404, value: "no_value"}
        when "foobar"
            {status: 500, value: "internal_error"}
        when "ipsum"
            {status: 403, value: "unauthorized"}
        else
            {status: 422, value: "bad_value"}
        end
    render json: { status: result[:status],  data: result[:value] }.to_json
end

end
