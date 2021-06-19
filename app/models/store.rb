# == Schema Information
#
# Table name: stores
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  owner_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Store < ApplicationRecord

  belongs_to :owner,
    foreign_key: :owner_id,
    class_name: :User

  has_many :lemos,
    foreign_key: :store_id,
    class_name: :Lemo
end
