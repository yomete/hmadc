class ScraperDbJob < ApplicationJob
  queue_as :urgent

  def perform(obj)
    puts obj
  end

end
