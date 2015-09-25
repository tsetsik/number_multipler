require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

require "#{File.dirname(__FILE__)}/lib/prime_multiplier"

RuboCop::RakeTask.new(:rubocop)
RSpec::Core::RakeTask.new(:spec)

task default: [:rubocop, :spec]

desc 'Task for runing prime generator gem'
task :prime_multiplier_table, [:count] do |_, args|
  args.with_defaults(count: 10)

  num_primes = args[:count].to_i

  primes = PrimeMultiplier::NumberGenerator.new.call(num_primes)
  multiplied_primes = PrimeMultiplier::Multiply.new.call(primes, num_primes)

  PrimeMultiplier::Table.new(primes: primes, multiplied_primes: multiplied_primes).call
end
