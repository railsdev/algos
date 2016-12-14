require 'minitest/reporters'
require 'minitest/byebug' 
Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)
require 'minitest/autorun'
