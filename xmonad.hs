import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
 
myFocusedBorderColor = "#96FFA4"

main = do
    xmonad $ defaultConfig
        { 
	  -- hooks keep xmonbar on top
	  manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
	, focusedBorderColor = myFocusedBorderColor
	--, modMask = mod4Mask     -- Rebind Mod to the Windows key
	}
