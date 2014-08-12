module Common where

import XMonad
import XMonad.Util.Paste


mainMod = mod4Mask

myWorkspaces :: [WorkspaceId]
myWorkspaces = map show [1 .. 9 :: Int]

myLayoutHook = tiled ||| Mirror tiled ||| Full
  where
    -- default tiling algorithm partitions the screen into two panes
    tiled   = Tall nmaster delta ratio

    -- The default number of windows in the master pane
    nmaster = 1 

    -- Default proportion of screen occupied by master pane
    ratio   = 1/2

    -- Percent of screen to increment by when resizing panes
    delta   = 3/100
 
------------------------------------------------------------------------
---- Key bindings. Add, modify or remove key bindings here.
----
myKeys = 
    -- X-selection-paste buffer
    [ ((mainMod, xK_y), pasteSelection) 
    ]
