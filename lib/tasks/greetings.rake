namespace :greetings do
  desc 'Greetings task'
  task :Task1, :message do |task, args|
    puts "Greetings: #{args.message}"
  end
end
