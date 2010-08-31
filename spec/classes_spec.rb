require 'spec_helper'

describe Adjutant::Task, 'An Adjutant Task' do
  
  subject { Adjutant::Task.new() }
  
  it "has a title string" do
    subject.title.should be_an_instance_of(String)
  end

  it "has a notes string" do
    subject.notes.should be_an_instance_of(String)
  end

  it "has a status of not started" do
    subject.status.should == :not_started
  end

  it "has a priority code string" do
    subject.priority.should be_an_instance_of(String)
  end

  it "has a scheduled date and time" do
    subject.date.should be_an_instance_of(DateTime)
  end

end

describe Adjutant::Appointment, 'An Adjutant Appointment scheduled between 5:00p and 7:00p, May 1, 2011' do

  subject do
    appt = Adjutant::Appointment.new
    appt.date = DateTime.civil(2011, 5, 1, 17, 0, 0)
    appt.duration = 120
    appt
  end

  it "is an appointment" do
    subject.type.should == :appointment
  end

  it "is happening in May" do
    subject.date.month.should == 5
  end

  it "is happening at 5:00p" do
    subject.date.hour.should == 17
  end
  
end

describe Adjutant::Task, 'An Adjutant Task scheduled for May 1, 2011' do

  subject do
    task = Adjutant::Task.new
    task.date = DateTime.civil(2011, 5, 1, 0, 0, 0)
    task
  end

  it "is a task" do
    subject.type.should == :task
  end

  it "is happening in May" do
    subject.date.month.should == 5
  end

end

describe Adjutant::Project, 'An Adjutant Project' do
  
  subject { Adjutant::Project.new() }
  
  it "has a title string" do
    subject.title.should be_an_instance_of(String)
  end

  it "has a notes string" do
    subject.notes.should be_an_instance_of(String)
  end

  it "has a completion date" do
    subject.date.should be_an_instance_of(DateTime)
  end
end






