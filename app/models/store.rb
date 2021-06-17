class Store < ApplicationRecord

  belongs_to :owner,
    foreign_key: :owner_id,
    class_name: :User

  has_many :lemos,
    foreign_key: :store_id,
    class_name: :Lemo
end
