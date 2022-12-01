# frozen_string_literal: true

module MethodDuplicator
  class FilesWrapper
    def paths
      @paths ||= Dir.glob('app/**/*').select do |path|
        File.file?(path) && path.end_with?('rb')
      end
    end

    def list
      @list ||= paths.map do |path|
        File.open(path)
      end
    end
  end
end
