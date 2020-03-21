# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :full_name, presence: true
  validates :phone_number, uniqueness: true
end
