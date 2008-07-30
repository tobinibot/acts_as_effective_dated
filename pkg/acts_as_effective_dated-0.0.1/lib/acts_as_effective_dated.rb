# $:.unshift(File.dirname(__FILE__)) unless
#  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

LIB_DIRECTORY = *[File.dirname(__FILE__),'acts_as_effective_dated']

require 'activerecord'

module ActiveRecord
  module Acts
  end
end

require File.join(LIB_DIRECTORY, 'version')
require File.join(LIB_DIRECTORY, 'base')