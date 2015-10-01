module HiThere
  class Course < ActiveRecord::Base
    include Workflow
    
    has_many :emails, -> { order(issue_number: :asc) }
    has_many :subscriptions

    validates :title, presence: true, uniqueness: true
    
    workflow do
      state :draft do
        event :open, :transitions_to => :opened
      end

      state :opened do
        event :close, :transitions_to => :closed
      end

      state :closed do
        event :open, :transitions_to => :opened
      end
    end 

    def issue(number)
      emails.where(issue_number: number).take
    end   
  end
end
