class Role < ActiveRecord::Base

    has_many :auditions

    def actors
        self.auditions.pluck(:actor)
    end

    def locations
        # Same as #pluck
        self.auditions.map {|a| a.location}
    end

    # Returns the lead actor hired for the role or a message if
    # no one has been hired yet
    def lead
        hired = self.auditions.where("hired = ?", true).limit(1)
        hired.count === 1 ? hired : "no actor has been hired for this role"
    end
    
    # Returns the understudy actor hired for the role or a message if
    # no one has been hired yet
    def understudy
        hired = self.auditions.where("hired = ?", true).limit(2).second
        hired ? hired : "no actor has been hired for understudy for this role"
    end

end
