import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig

import Common  -- user defined module

main = do 
   cfg <- xmobar $ defaultConfig
      { terminal    = "urxvt"
      , layoutHook  = Common.myLayoutHook
--      , manageHook  = manageHook defaultConfig <+> manageDocks
      , manageHook  = Common.myManageHook
      , modMask     = Common.mainMod
      , workspaces  = Common.myWorkspaces
      , keys        = keys defaultConfig
      , borderWidth = 3
      }  `additionalKeys` Common.myKeys
   xmonad cfg
