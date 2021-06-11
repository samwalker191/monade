class Store < ApplicationRecord

  belongs_to :user,
    foreign_key: :owner_id,
    class_name: :User

  has_many :apples,
    foreign_key: :store_id,
    class_name: :Lemo
end