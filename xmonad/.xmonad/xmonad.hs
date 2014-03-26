import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig

import Common  -- user defined module

main = do 
   cfg <- xmobar $ defaultConfig
      { terminal    = "urxvt"
      , layoutHook  = avoidStruts $ layoutHook defaultConfig
      , manageHook  = manageHook defaultConfig <+> manageDocks
      , modMask     = Common.mainMod
      , workspaces  = Common.myWorkspaces
      , keys        = keys defaultConfig
      , borderWidth = 3
      }  `additionalKeys` Common.myKeys
   xmonad cfg
