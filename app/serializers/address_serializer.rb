class AddressSerializer < ActiveModel::Serializer
  attributes :id, :street, :city, :contact_id
  belongs_to :contact
end
