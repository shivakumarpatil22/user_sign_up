class User < ApplicationRecord
  validates_each :name do |user, attr, value|
      user.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
  end
  validates_presence_of :email, :password, :name 
end
