module MethodDuplicator
  class Railtie < ::Rails::Railtie
    rake_tasks do
      load 'tasks/method_duplicator_tasks.rake'
    end
  end
end
