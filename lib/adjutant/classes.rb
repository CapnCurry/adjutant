module Adjutant
  
  class Planner_Item
    attr_accessor :title, :notes, :date, :type, :remind, :show_in_journal
    
    def initialize
      @title = 'New Item'
      @notes = ''
      @date = DateTime.civil
      @type = :generic
      @remind = false
      @show_in_journal = false
    end
  end
  
  class Task < Planner_Item
    attr_accessor :priority, :status

    def initialize
      super
      @priority = ''
      @status = :not_started
      @type = :task
    end
  end

  class Appointment < Planner_Item
    attr_accessor :duration

    def initialize
      super
      @duration = 0
      @type = :appointment
    end
  end
  
  class Project < Planner_Item
    
    attr_accessor :tasks

    def initialize
      super
      @tasks = []
      @type = :project
    end
  
  end
  
  class Reminder < Planner_Item
    def initialize
      super
      @type = :reminder
    end
  end
  
  class Journal < Planner_Item
    def initialize
      super
      @type = :journal
    end
  end
  
  class Planner
    attr_accessor :user_name, :items
    
    def initialize
      @user_name = 'New User'
      @items = []
      @foci = []
    end
    
  end
end
