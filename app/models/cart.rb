class Cart < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
