###
# Copyright (c) 2015, Upnext Technologies Sp. z o.o.
# All rights reserved.
#
# This source code is licensed under the BSD 3-Clause License found in the
# LICENSE.txt file in the root directory of this source tree. 
###

module S2sApi
  module V1
    class ZoneSerializer < ZoneWithoutBeaconsSerializer
      attributes :beacon_ids

      has_many :beacons, each_serializer: S2sApi::V1::BeaconSerializer
    end
  end
end
