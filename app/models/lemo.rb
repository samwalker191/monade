# == Schema Information
#
# Table name: lemos
#
#  id         :bigint           not null, primary key
#  price      :integer          not null
#  store_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Lemo < ApplicationRecord
  
  belongs_to :store,
    foreign_key: :store_id,
    class_name: :Store
end
