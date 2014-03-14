import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Paste

import qualified Data.Map        as M

main = do
  xmonad =<< xmobar defaultConfig
    { terminal    = "urxvt"
    , layoutHook  = avoidStruts $ layoutHook defaultConfig
    , manageHook  = manageHook defaultConfig <+> manageDocks
    , modMask     = mod4Mask
    , keys        = myKeys <+> keys defaultConfig
    , borderWidth = 3
    }

------------------------------------------------------------------------
---- Key bindings. Add, modify or remove key bindings here.
----
myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
    -- X-selection-paste buffer
    [ ((modm, xK_y), pasteSelection) ]
