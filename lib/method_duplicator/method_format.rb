module MethodDuplicator
  class MethodFormat < Struct.new(:name, :line, :use_counter, :file_path, keyword_init: true)
  end
end
