class User < ApplicationRecord

  def full_name
    name
  end

  def age
    34
  end

  def jeanpierre(foo)
    'bar'
  end

  def self.qwerty
    full_name
  end
end
