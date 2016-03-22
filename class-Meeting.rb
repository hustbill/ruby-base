class Meeting

end

class Interview

end

class DesignReview

end

class Scheduler

  def schedulable?(target, start_date, end_date)
    if target.is_a?(Meeting)
      return end_date - (start_date - 5.days) > 10.days
    elsif target.is_a?(Interview)
      return start_date > (end_date - 2.days)
    elsif target.is_a?(DesignReview)
      return (end_date + 10.days) - start_date > 15.days

    
    end
  end

end

targets = [ Meeting.new, Interview.new, DesignReview.new ]
scheduler = Scheduler.new

targets.each do |target|
  if scheduler.schedulable?(target, Clock.today, Clock.today + 10)
    puts "The #{target.class.name} can be scheduled"
  end
end


