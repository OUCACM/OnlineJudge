class Problem < ActiveRecord::Base
  attr_accessible :contest, :description, :hint, :input, :memory_limit, :output, :sample_input, :sample_output, :source, :special, :time_limit, :title
end
