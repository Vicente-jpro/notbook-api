class AddressesController < ApplicationController
    before_action :set_address

    def update 
      if @address.update(params_address)
        render json: @address
      else
        render json: @address.errors, status: :unprocessable_entity  
      end
    end

    # GET /contacts/1/address
    def show 
      render json: @address
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Contact.find(params[:contact_id]).address
    end

    def params_address
      ActiveModelSerializers::Deserialization.jsonapi_parse(params) 
    end
end
