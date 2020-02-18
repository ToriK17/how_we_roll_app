require 'rails_helper'

# RSpec.describe Objective, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe Objective, type: :model do
  describe '#toggle_complete!' do
    it 'should switch complete to false if it began as true' do
      objective = Objective.create(complete: true)
      objective.toggle_complete!
      expect(objective.complete).to eq(false)
    end 
    it 'should switch complete to true if it began as false' do
      objective = Objective.create(complete: false)
      objective.toggle_complete!
      expect(objective.complete).to eq(true)  
    end   
  end  
  describe '#overdue?' do 
    it 'should return true if date is earlier than now' do
      objective = Objective.create(date: 1.day.ago)
      expect(objective.overdue?).to eq(true) 
    end    
  end  
  describe 'increment_priority!' do
    it 'should increment priority by 1' do
      objective = Objective.create(priority: 4)
      objective.increment_priority!
      expect(objective.priority).to eq(5)
    end   
  end
  describe 'decrement_priority!' do
    it 'should decrement priority by 1' do
      objective = Objective.create(priority: 4)
      objective.decrement_priority!
      expect(objective.priority).to eq(3)
    end   
  end   
  describe 'snooze_by_day!' do
    it 'should push date by day' do
      date = Time.now
      objective = Objective.create(date: date)
      objective.snooze_by_day!
      expect(objective.date).to eq(date + 1.day)
    end   
  end   
end 

