# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

desc 'Run the bot'
task :default do
  require 'ba'
rescue Interrupt
  exit
end
