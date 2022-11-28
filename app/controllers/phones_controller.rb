class PhonesController < ApplicationController
    before_action :set_phones


    # PATCH /contacts/1/phone
    def update 
      if @contact.phones.update(params_phones)
        render json: @contact.phones, contact_phone_url(@contact.phones)
      else
      end
    end
    
    # GET /contacts/1/phone
    def show 
      render json: @contact.phones
    end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_phones
      @contact = Contact.find(params[:contact_id])
    end

    def params_phones 
      ActiveModelSerializers::Deserialization.jsonapi_parse(params) 
    end
end
