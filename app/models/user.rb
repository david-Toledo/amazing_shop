class User < ApplicationRecord
  has_one :basket

  has_secure_password
end
