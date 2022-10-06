class Menu < ApplicationRecord
  include Visible
  has_many :menu_items, dependent: :destroy

  validates :name, presence: true
end
