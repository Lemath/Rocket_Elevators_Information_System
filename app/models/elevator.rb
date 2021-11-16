class Elevator < ApplicationRecord
    belongs_to :column
    after_save :send_change_to_slack, if: proc { saved_change_to_status? } 
    

    def send_change_to_slack
        notifier = Slack::Notifier.new ENV['SLACK_BOT_URL']
        message = "The Elevator #{self.id} with Serial Number #{self.serial_number} changed status from #{self.status_before_last_save} to #{self.status}."
        notifier.ping(message)
    end

    def status_enum
        ['Offline', 'Online', 'Intervention']
    end 

end
