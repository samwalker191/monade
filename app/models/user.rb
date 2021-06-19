# == Schema Information
#
# Table name: users
#
#  id          :bigint           not null, primary key
#  username    :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string
#  description :text
#
class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  # validates :username, length: {maximum: 12}

  has_many :stores,
    foreign_key: :owner_id,
    class_name: :Store

  has_many :lemos,
    through: :stores, # NOT TABLE NAMES
    source: :lemos #NOT CLASS NAME, TABLE NAME
    # They are association names
    # Through association can go through another through association
end
