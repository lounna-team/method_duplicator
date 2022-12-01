module TestConcernable
  extend ActiveSupport::Concern

  included do
    def included_hello
      'Hello from include'
    end
  end

  class_methods do
    def test_from_concern
      'fjsdlkfjsdlkfj'
    end
  end

  def hello
    'Hello'
  end

  def self.hello_class
    'Hello'
  end
end
