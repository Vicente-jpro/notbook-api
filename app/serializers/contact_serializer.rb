class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate, :kind_id

  belongs_to :kind do 
    link(:kind) { kind_url(object.id) }
  end
  
  has_many :phones
  has_one :address

  link(:contact) { contact_url(object.id) } 
  
  meta do 
    { author: "Vicente Simão" }
  end

  def attributes(*args)
    b = super(*args)
    b[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
    b
  end
end
