class PhonesController < ApplicationController
    before_action :set_contact


    def create
       @contact.phones << Phone.new(params_phones)
       
       if @contact.save
        render json: @contact.phones, status: :created, location: contact_phones_url(@contact.phones)
       else
        render json: @contact.phones.errors, status: :unprocessable_entity
       end
    end
    # PATCH /contacts/1/phone
    def update 
      # if @contact.phones.update(params_phones)
      #   render json: @contact.phones, contact_phones_url(@contact.phones)
      # else
      #   render json: {}
      # end
    end
    
    # GET /contacts/1/phones
    def show 
      render json: @contact.phones
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:contact_id])
    end

    def params_phones 
      ActiveModelSerializers::Deserialization.jsonapi_parse(params) 
    end
end
