class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate, :kind_id
end
