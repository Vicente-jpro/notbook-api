class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate, :kind_id

  belongs_to :kind
  has_many :phones
  has_one :address

  meta do 
    { author: "Vicente Simão" }
  end
  
  def attributes(*args)
    b = super(*args)
    b[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
    b
  end
end
