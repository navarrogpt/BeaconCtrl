###
# Copyright (c) 2015, Upnext Technologies Sp. z o.o.
# All rights reserved.
#
# This source code is licensed under the BSD 3-Clause License found in the
# LICENSE.txt file in the root directory of this source tree. 
###

module BeaconControl
  module KontaktIoExtension
    class Engine < Rails::Engine
      isolate_namespace BeaconControl::KontaktIoExtension

      initializer "kontakt_io_extension", before: :load_config_initializers do |app|
        config.paths["db/migrate"].expanded.each do |expanded_path|
          Rails.application.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
