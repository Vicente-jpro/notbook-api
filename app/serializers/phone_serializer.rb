class PhoneSerializer < ActiveModel::Serializer
  attributes :id, :number, :contact_id
end
