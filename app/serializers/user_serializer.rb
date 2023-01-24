class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_name, :password_digest, :email, :phone_number, :photo_id
end
