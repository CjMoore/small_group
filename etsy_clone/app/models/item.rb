class Item < ActiveRecord::Base
  belongs_to :store

  has_many :item_categories
  has_many :categories, through: :item_categories
end
