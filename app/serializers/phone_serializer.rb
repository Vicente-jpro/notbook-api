class PhoneSerializer < ActiveModel::Serializer
  attributes :id, :number, :contact_id
  
  belongs_to :contact do 
    link (:related) { contact_phones_url(object.contact.id)}
  end
end
