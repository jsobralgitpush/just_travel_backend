class TicketRelatedFacility < ApplicationRecord
  belongs_to :ticket
  belongs_to :facility
end
