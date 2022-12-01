require 'csv'

class CsvBuilder
  attr_reader :data

  def initialize(data:)
    @data = data
  end

  def build
    CSV.open("tmp/file.csv", 'w') do |csv|
      csv << ['Method Name', 'Files', 'Definition line', 'Counter use']
      data.each do |item|
        csv << [item.name, item.file_path, item.line, item.use_counter]
      end
    end
  end
end
