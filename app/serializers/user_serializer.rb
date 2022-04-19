class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email
  has_many :products

  cache_options enable: true, cache_length: 12.hours
end
