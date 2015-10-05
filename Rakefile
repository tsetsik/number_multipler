require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

require "#{File.dirname(__FILE__)}/lib/number_multiplier"

RuboCop::RakeTask.new(:rubocop)
RSpec::Core::RakeTask.new(:spec)

task default: [:rubocop, :spec]

desc 'Task for runing number generator gem'
task :number_multiplier_table, [:count, :type] do |_, args|
  args.with_defaults(count: 10, type: 'primes')

  num = args[:count].to_i

  numbers = NumberMultiplier::GenericGenerator.call(args[:type], num)
  multiplied_numbers = NumberMultiplier::Multiply.new.call(numbers, num)

  NumberMultiplier::Table.new(numbers: numbers, multiplied_numbers: multiplied_numbers).call
end
