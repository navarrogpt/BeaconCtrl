###
# Copyright (c) 2015, Upnext Technologies Sp. z o.o.
# All rights reserved.
#
# This source code is licensed under the BSD 3-Clause License found in the
# LICENSE.txt file in the root directory of this source tree. 
###

require "beacon_control/dwell_time_extension/version"

module BeaconControl
  module DwellTimeExtension
    include BeaconControl::Base::Extension

    self.registered_name = "DwellTime"

    register_extension! 'beacon_control-dwell_time_extension'

    def self.table_name_prefix
      "ext_dwell_time_"
    end

    def self.load_files
      [
        "app/models/trigger/dwell_time_ext",
        "app/workers/beacon_control/dwell_time_extension/worker",
        'app/serializers/s2s_api/trigger_serializer/dwell_time',
        'app/models/beacon/dwell_time',
      ]
    end
  end
end

require "beacon_control/dwell_time_extension/engine" if defined?(Rails)