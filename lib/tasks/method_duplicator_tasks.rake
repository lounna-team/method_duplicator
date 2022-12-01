require 'color-console'

namespace :method_duplicator do
  desc 'Explaining what the task does'
  task methods: :environment do
    result = MethodDuplicator.get_unused_method do |progress|
      Console.show_progress('Progress', progress)
    end

    sleep(1)

    header = ['Function Name', 'Files', 'Definition line', 'Counter use']

    Console.display_table([header].concat(result.map do |item|
      [item.name, item.file_path, item.line, item.use_counter]
    end), col_spec: '|', row_spec: '-')
  end
end
