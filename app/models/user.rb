class User < ApplicationRecord
  before_save :dob_to_age
  before_validation :normalize_name, on: :create
  validates_presence_of :email, :password, :name
  validates_each :name do |user, attr, value|
      user.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
  end

  private

  def normalize_name
    self.name = name.downcase.titleize
  end

  def dob_to_age
    age = (Time.now.year - dob)
  end
end
