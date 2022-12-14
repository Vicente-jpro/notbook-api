class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate, :kind_id

  belongs_to :kind do 
    link(:related) { contact_kind_url(object) }
  end

  has_many :phones do 
    link(:related) { contact_phone_url(object) }
  end
  
  has_one :address do 
    link(:related) { contact_address_url(object) }
  end

  link(:self) { contact_url(object.id) } 
  
  meta do 
    { author: "Vicente Simão" }
  end

  def attributes(*args)
    b = super(*args)
    b[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
    b
  end
end
