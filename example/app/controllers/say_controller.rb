class SayController < ApplicationController
  def hello
    @time = Time.now
  end

  def goodbye
    @count = 2*3
  end
end
