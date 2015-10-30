//
//  UIDeviceIdentiferSwift.swift
//  UIDeviceIdentifierSwift
//
//  Created by andres on 29/10/2015.
//  Copyright © 2015 Andres Ortiz. All rights reserved.
//

import Foundation

class  UIDeviceIdentifierSwift {
    
    func platform() -> String {
    
        var size: size_t = 0;
        sysctlbyname("hw.machine", nil, &size, nil, 0);
        var machine = [CChar](count: Int(size), repeatedValue: 0)
        sysctlbyname("hw.machine", &machine, &size, nil, 0);
    
        return String.fromCString(machine)!
    }
    
    func platformString() -> String {
        let modelDevice = platform()
        
        if (modelDevice == "iPhone1,1") { return "iPhone 1G"                        };
        if (modelDevice == "iPhone1,2") { return "iPhone 3G"                        };
        if (modelDevice == "iPhone2,1") { return "iPhone 3GS"                       };
        if (modelDevice == "iPhone3,1") { return "iPhone 4 (GSM)"                   };
        if (modelDevice == "iPhone3,2") { return "iPhone 4 (GSM Rev A)"             };
        if (modelDevice == "iPhone3,3") { return "iPhone 4 (CDMA)"                  };
        if (modelDevice == "iPhone4,1") { return "iPhone 4S"                        };
        if (modelDevice == "iPhone5,1") { return "iPhone 5 (GSM)"                   };
        if (modelDevice == "iPhone5,2") { return "iPhone 5 (GSM+CDMA)"              };
        if (modelDevice == "iPhone5,3") { return "iPhone 5C (GSM)"                  };
        if (modelDevice == "iPhone5,4") { return "iPhone 5C (GSM+CDMA)"             };
        if (modelDevice == "iPhone6,1") { return "iPhone 5S (GSM)"                  };
        if (modelDevice == "iPhone6,2") { return "iPhone 5S (GSM+CDMA)"             };
        if (modelDevice == "iPhone7,1") { return "iPhone 6 Plus"                    };
        if (modelDevice == "iPhone7,2") { return "iPhone 6"                         };
        if (modelDevice == "iPhone8,1") { return "iPhone 6s"                        };
        if (modelDevice == "iPhone8,2") { return "iPhone 6s Plus"                   };
        if (modelDevice == "iPod1,1")   { return "iPod Touch 1G"                    };
        if (modelDevice == "iPod2,1")   { return "iPod Touch 2G"                    };
        if (modelDevice == "iPod3,1")   { return "iPod Touch 3G"                    };
        if (modelDevice == "iPod4,1")   { return "iPod Touch 4G"                    };
        if (modelDevice == "iPod5,1")   { return "iPod Touch 5G"                    };
        if (modelDevice == "iPod7,1")   { return "iPod Touch 6G"                    };
        if (modelDevice == "iPad1,1")   { return "iPad 1"                           };
        if (modelDevice == "iPad2,1")   { return "iPad 2 (WiFi)"                    };
        if (modelDevice == "iPad2,2")   { return "iPad 2 (GSM)"                     };
        if (modelDevice == "iPad2,3")   { return "iPad 2 (CDMA)"                    };
        if (modelDevice == "iPad2,4")   { return "iPad 2"                           };
        if (modelDevice == "iPad2,5")   { return "iPad Mini (WiFi)"                 };
        if (modelDevice == "iPad2,6")   { return "iPad Mini (GSM)"                  };
        if (modelDevice == "iPad2,7")   { return "iPad Mini (GSM+CDMA)"             };
        if (modelDevice == "iPad3,1")   { return "iPad 3 (WiFi)"                    };
        if (modelDevice == "iPad3,2")   { return "iPad 3 (GSM+CDMA)"                };
        if (modelDevice == "iPad3,3")   { return "iPad 3 (GSM)"                     };
        if (modelDevice == "iPad3,4")   { return "iPad 4 (WiFi)"                    };
        if (modelDevice == "iPad3,5")   { return "iPad 4 (GSM)"                     };
        if (modelDevice == "iPad3,6")   { return "iPad 4 (GSM+CDMA)"                };
        if (modelDevice == "iPad4,1")   { return "iPad Air (WiFi)"                  };
        if (modelDevice == "iPad4,2")   { return "iPad Air (WiFi/Cellular)"         };
        if (modelDevice == "iPad4,3")   { return "iPad Air (China)"                 };
        if (modelDevice == "iPad4,4")   { return "iPad Mini Retina (WiFi)"          };
        if (modelDevice == "iPad4,5")   { return "iPad Mini Retina (WiFi/Cellular)" };
        if (modelDevice == "iPad4,6")   { return "iPad Mini Retina (China)"         };
        if (modelDevice == "iPad4,7")   { return "iPad Mini 3 (WiFi)"               };
        if (modelDevice == "iPad4,8")   { return "iPad Mini 3 (WiFi/Cellular)"      };
        if (modelDevice == "iPad5,1")   { return "iPad Mini 4 (WiFi)"               };
        if (modelDevice == "iPad5,2")   { return "iPad Mini 4 (WiFi/Cellular)"      };
        if (modelDevice == "iPad5,3")   { return "iPad Air 2 (WiFi)"                };
        if (modelDevice == "iPad5,4")   { return "iPad Air 2 (WiFi/Cellular)"       };
        if (modelDevice == "i386")      { return "Simulator"                        };
        if (modelDevice == "x86_64")    { return "Simulator"                        };
        
        return modelDevice
    }
    
    func platformStringSimple() -> String {
        let modelDevice = platform()
        
        if (modelDevice == "iPhone1,1") { return "iPhone 1G"                        };
        if (modelDevice == "iPhone1,2") { return "iPhone 3G"                        };
        if (modelDevice == "iPhone2,1") { return "iPhone 3GS"                       };
        if (modelDevice == "iPhone3,1") { return "iPhone 4"                         };
        if (modelDevice == "iPhone3,2") { return "iPhone 4"                         };
        if (modelDevice == "iPhone3,3") { return "iPhone 4"                         };
        if (modelDevice == "iPhone4,1") { return "iPhone 4S"                        };
        if (modelDevice == "iPhone5,1") { return "iPhone 5"                         };
        if (modelDevice == "iPhone5,2") { return "iPhone 5"                         };
        if (modelDevice == "iPhone5,3") { return "iPhone 5C"                        };
        if (modelDevice == "iPhone5,4") { return "iPhone 5C"                        };
        if (modelDevice == "iPhone6,1") { return "iPhone 5S"                        };
        if (modelDevice == "iPhone6,2") { return "iPhone 5S"                        };
        if (modelDevice == "iPhone7,1") { return "iPhone 6 Plus"                    };
        if (modelDevice == "iPhone7,2") { return "iPhone 6"                         };
        if (modelDevice == "iPhone8,1") { return "iPhone 6s"                        };
        if (modelDevice == "iPhone8,2") { return "iPhone 6s Plus"                   };
        if (modelDevice == "iPod1,1")   { return "iPod Touch 1G"                    };
        if (modelDevice == "iPod2,1")   { return "iPod Touch 2G"                    };
        if (modelDevice == "iPod3,1")   { return "iPod Touch 3G"                    };
        if (modelDevice == "iPod4,1")   { return "iPod Touch 4G"                    };
        if (modelDevice == "iPod5,1")   { return "iPod Touch 5G"                    };
        if (modelDevice == "iPod7,1")   { return "iPod Touch 6G"                    };
        if (modelDevice == "iPad1,1")   { return "iPad 1"                           };
        if (modelDevice == "iPad2,1")   { return "iPad 2"                           };
        if (modelDevice == "iPad2,2")   { return "iPad 2"                           };
        if (modelDevice == "iPad2,3")   { return "iPad 2"                           };
        if (modelDevice == "iPad2,4")   { return "iPad 2"                           };
        if (modelDevice == "iPad2,5")   { return "iPad Mini"                        };
        if (modelDevice == "iPad2,6")   { return "iPad Mini"                        };
        if (modelDevice == "iPad2,7")   { return "iPad Mini"                        };
        if (modelDevice == "iPad3,1")   { return "iPad 3"                           };
        if (modelDevice == "iPad3,2")   { return "iPad 3"                           };
        if (modelDevice == "iPad3,3")   { return "iPad 3"                           };
        if (modelDevice == "iPad3,4")   { return "iPad 4"                           };
        if (modelDevice == "iPad3,5")   { return "iPad 4"                           };
        if (modelDevice == "iPad3,6")   { return "iPad 4"                           };
        if (modelDevice == "iPad4,1")   { return "iPad Air"                         };
        if (modelDevice == "iPad4,2")   { return "iPad Air"                         };
        if (modelDevice == "iPad4,3")   { return "iPad Air"                         };
        if (modelDevice == "iPad4,4")   { return "iPad Mini Retina"                 };
        if (modelDevice == "iPad4,5")   { return "iPad Mini Retina"                 };
        if (modelDevice == "iPad4,6")   { return "iPad Mini Retina"                 };
        if (modelDevice == "iPad4,7")   { return "iPad Mini 3"                      };
        if (modelDevice == "iPad4,8")   { return "iPad Mini 3"                      };
        if (modelDevice == "iPad5,1")   { return "iPad Mini 4"                      };
        if (modelDevice == "iPad5,2")   { return "iPad Mini 4"                      };
        if (modelDevice == "iPad5,3")   { return "iPad Air 2"                       };
        if (modelDevice == "iPad5,4")   { return "iPad Air 2"                       };
        if (modelDevice == "i386")      { return "Simulator"                        };
        if (modelDevice == "x86_64")    { return "Simulator"                        };
        
        return modelDevice
    }

}
