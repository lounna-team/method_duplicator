require 'zeitwerk'
loader = Zeitwerk::Loader.for_gem
loader.setup

module MethodDuplicator
  def self.get_unused_method
    # Get all methods arrays
    files_list = FilesWrapper.new.list
    methods_array = MethodsWrapper.new(files: files_list).get_all_methods_from_file_array

    files_list.each_with_index do |file, index|
      yield((index * 100) / files_list.count)
      File.open(file).each do |line|
        new_line = line.gsub(/#.*/, '#')
        methods_array.each do |item|
          # counter le nombre de fois ou apparait le name
          if new_line.include?(item.name)
            # incrementer le counter
            item.use_counter += new_line.split(/(\.| )/).count do |word|
              word.include?(item.name)
            end
          end
        end
      end
    end

    CsvBuilder.new(data: methods_array).build
    methods_array
  end
end

loader.eager_load
