# frozen_string_literal: true

module MethodDuplicator
  class MethodsWrapper
    attr_reader :files

    WHITE_LIST = %w[initialize]

    def initialize(files:)
      @files = files
    end

    def get_all_methods_from_file_array
      @get_all_methods_from_file_array ||= files.map do |item|
        get_methods_from_file(item)
      end.flatten.reject do |item|
        WHITE_LIST.include?(item)
      end.uniq
    end

    private

    def format_success(line, number, file_path)
      MethodFormat.new(
        name: "#{line}".strip.split('(')[0].split(' ')[1].gsub('self.', ''),
        line: number,
        file_path: file_path,
        use_counter: -1
      )
    end

    def get_methods_from_file(file)
      file.each_with_index.map do |line, index|
        if line.match?(/^ *def /)
          format_success(line, index + 1, file.path)
        end
      end.compact
    end
  end
end
