class AddressSerializer < ActiveModel::Serializer
  attributes :id, :street, :city, :contact_id
end
