module Common where

import XMonad
import XMonad.Util.Paste


mainMod = mod4Mask

myWorkspaces :: [WorkspaceId]
myWorkspaces = map show [1 .. 9 :: Int]

------------------------------------------------------------------------
---- Key bindings. Add, modify or remove key bindings here.
----
myKeys = 
    -- X-selection-paste buffer
    [ ((mainMod, xK_y), pasteSelection) 
    ]
