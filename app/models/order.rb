class Order < ApplicationRecord

  validates :email, :message, presence: true
  
end
