class PhoneSerializer < ActiveModel::Serializer
  attributes :id, :number, :contact_id
  belongs_to :contact
end
