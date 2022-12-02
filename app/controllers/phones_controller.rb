class PhonesController < ApplicationController
    before_action :set_contact

    # POST /contacts/1/phone
    def create
       @contact.phones << Phone.new(params_phones)
       
       if @contact.save
        render json: @contact.phones, status: :created, location: contact_phone_url(@contact.phones)
       else
        render json: @contact.phones.errors, status: :unprocessable_entity
       end
    end

    # PATCH /contacts/1/phone
    def update 
      @phone = Phone.find(params_phones[:id])
      if @phone.update(params_phones)
         render json: @contact.phones
       else
        render json: @contact.phones.errors, status: :unprocessable_entity
       end
    end

    def destroy 
      @phone = Phone.find(params_phones[:id])
      @phone.destroy 
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
