class ApplicationController < ActionController::API
    before_action :ensure_json_request

    def ensure_json_request
      
      # Accept only "application/vnd.api+json"
      #return if request.headers["Accept"] =~ /vnd\.api\+json/
      return if request.headers["Accept"] =~ /json/
      render nothing: true, status: 406    
    end
end
