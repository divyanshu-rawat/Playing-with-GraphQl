class ApplicationController < ActionController::API

 def query
    result = Schema.execute(
      params[:query]
    )
    render json: result
  end

end


# When this endpoint is called, we execute it according to our GraphQL Schema, 
# based on the query defined in the request params. Then, we send the response back as JSON.