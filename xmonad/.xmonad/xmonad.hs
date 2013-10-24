import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks

main = do
  xmonad =<< xmobar defaultConfig
    { terminal    = "urxvt"
    , layoutHook  = avoidStruts $ layoutHook defaultConfig
    , manageHook  = manageHook defaultConfig <+> manageDocks
    , modMask     = mod4Mask
    , borderWidth = 3
    }
