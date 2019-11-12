module Response
  def json_response(object, status = :ok)
    # puts "JSON RESPONSE #{object.inspect}"
    # puts "JSON STATUS #{status}"
    render json: object, status: status
  end
end