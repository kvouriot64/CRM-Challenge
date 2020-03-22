# frozen_string_literal: true

class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers_alphabetized = Customer.order(:first_name)
  end

  def missing_email
    @customers_missing_emails = Customer.where(email: nil)
  end
end
