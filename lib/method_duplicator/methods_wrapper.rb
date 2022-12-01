# frozen_string_literal: true

module MethodDuplicator
  class MethodsWrapper
    attr_reader :files

    WHITE_LIST = %w[initialize].freeze

    def initialize(files:)
      @files = files
    end

    def get_all_methods_from_file_array
      @get_all_methods_from_file_array ||= methods_from_file
    end

    private

    def methods_from_file
      files
        .map { |item| get_methods_from_file(item) }
        .flatten
        .reject { |item| WHITE_LIST.include?(item) }
        .uniq
    end

    def format_success(line, number, file_path)
      MethodFormat.new(
        name: line.strip.split('(')[0].split(' ')[1].gsub('self.', ''),
        line: number,
        file_path: file_path,
        use_counter: -1
      )
    end

    def get_methods_from_file(file)
      file
        .each_with_index
        .map do |line, index|
          format_success(line, index + 1, file.path) if line.match?(/^ *def /)
        end
        .compact
    end
  end
end
