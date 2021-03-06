###
# Copyright (c) 2015, Upnext Technologies Sp. z o.o.
# All rights reserved.
#
# This source code is licensed under the BSD 3-Clause License found in the
# LICENSE.txt file in the root directory of this source tree. 
###

#
# Responsible for scheduling messages on ActiveJob queues to be processed later.
#
module EventProcessor
  def self.process(events_message)
    EventJob.perform_later(events_message)
  end
end
