class AddressesController < ApplicationController
    before_action :set_address


    # POST /contacts/1/address
    def create 
      @contact.address = Address.new(params_address)

      if @contact.address.save
        render json: @contact.address, status: :created, location: contact_address_url(@contact.address)
      else
        render json: @contact.address.errors, status: :unprocessable_entity  
      end
    end

    # PATCH /contacts/1/address
    def update 
      if @contact.address.update(params_address)
        render json: @contact.address
      else
        render json: @contact.address.errors, status: :unprocessable_entity  
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
