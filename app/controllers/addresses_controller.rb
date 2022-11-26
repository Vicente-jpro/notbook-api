class AddressesController < ApplicationController
    before_action :set_address

    def update 
      if @contact.address.update(params_address)
        render json: @contact.address
      else
        render json: @contact.errors, status: :unprocessable_entity  
      end
    end

    # GET /contacts/1/address
    def show 
      render json: @contact.address
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @contact = Contact.find(params[:contact_id])
    end

    def params_address
      ActiveModelSerializers::Deserialization.jsonapi_parse(params) 
    end
end
