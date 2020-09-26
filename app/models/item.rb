class Item < ApplicationRecord
  belongs_to :category
  belongs_to :manufacturer
end
