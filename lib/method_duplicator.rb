require "method_duplicator/version"
require "method_duplicator/railtie"
require "method_duplicator/methods_wrapper"
require "method_duplicator/files_wrapper"
require "method_duplicator/method_format"

module MethodDuplicator
  def self.get_unused_method
    files_list = FilesWrapper.new.list
    methods_array = MethodsWrapper.new(files: files_list).get_all_methods_from_file_array

    files_list.each_with_index do |file, index|
      yield((index * 100) / files_list.count)
      File.open(file).each do |line|
        methods_array.each do |item|
          if line.include?("#{item.name}")
            item.use_counter += 1
          end
        end
      end
    end

    methods_array
  end
end
