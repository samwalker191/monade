class Lemo < ApplicationRecord
  
  belongs_to :store,
    foreign_key: :store_id,
    class_name: :Store
end
