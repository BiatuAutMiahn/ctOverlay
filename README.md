# ctOverlay
An overlay that interacts with the clipboard.

# Caveats
- When navigating to a submenu and moving cursor back up to a different item in the parent menu the entire menu will close and will refuse to open when clicking the overlay again, to fix you must click on any other window to take focus away from the hidden menu. The overlay menu will work again.
- The Clip > Send > /w Macros, and any of the Macro Manager entries will be interpreted according to AutoIt's Send Keys function Macro syntax. Documentation here:
  - https://www.autoitscript.com/autoit3/docs/functions/Send.htm
  - https://www.autoitscript.com/autoit3/docs/appendix/SendKeys.htm

Based on https://github.com/BiatuAutMiahn/ohOverlay
