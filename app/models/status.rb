class Status < ActiveRecord::Base
  attr_accessible :author, :code_len, :exe_memory, :exe_time, :language, :problem_id, :result, :submit_time
end
