class Objective < ApplicationRecord
   def toggle_complete!
    update(complete: !complete)
  end

  def overdue?
    return Time.now > date
  end

  def increment_priority!
    if priority < 10
      update(priority: priority + 1)
    end
  end

  def decrement_priority!
    if priority > 1 
      update(priority: priority - 1)
    end
  end

  def snooze_by_day!
    update(date: date + 1.day)
  end
end
