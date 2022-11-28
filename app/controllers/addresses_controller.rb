class AddressesController < ApplicationController
    before_action :set_address


    # POST /contacts/1/address
    def create 
      @address = Address.new(params_address)

      if @address.save
        render json: @address, status: :created, location: contact_address_url(@address)
      else
        render json: @address.errors, status: :unprocessable_entity  
      end
    end

    # PATCH /contacts/1/address
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
