class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate, :kind_id

  belongs_to :kind
  has_many :phones
  has_one :address
  
  def attributes(*args)
    b = super(*args)
    b[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
    b
  end
end
