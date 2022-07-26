require "stackprof/stackprof"

if defined?(RubyVM::YJIT) && RubyVM::YJIT.enabled?
  StackProf.use_postponed_job!
end

module StackProf
  VERSION = '0.2.20'
end

StackProf.autoload :Report, "stackprof/report.rb"
StackProf.autoload :Middleware, "stackprof/middleware.rb"
