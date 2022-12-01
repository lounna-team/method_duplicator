# frozen_string_literal: true

module MethodDuplicator
  class Report
    def unused_method
      result = result_function_name.to_h { |i| [i, -1] }

      FilesWrapper.new.list.each do |file|
        result_function_name.each do |item|
          if line.include?(item)
            hash[item] += 1
          end
        end
      end
    end
  end
end
