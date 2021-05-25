# Windows_Proxy_Toggler
A clickable icon on your Windows desktop to toggle your proxy on and off.

See [my answer on Stack Overflow][my_ans] for more details and info.

Here's what it looks like when the Proxy is OFF:

[![enter image description here][1]][1]

Here's what it looks like when the Proxy is ON:

[![enter image description here][2]][2]

Here's an example of the 1-second popup window that comes up whenever you click the shortcut icon to toggle the Proxy on/off. 

[![enter image description here][3]][3]

Toggle your Proxy on and off by simply double-clicking the above desktop shortcut/icon.  


By Gabriel Staples  
www.ElectricRCAircraftGuy.com  

Written: 21 June 2017  
Updated: 25 June 2017  
Updated and added to GitHub: 25 May 2021  


# Installation and Usage Instructions

1. Download this repository directly into your **"C:\Users\YOUR_USERNAME"** folder. You will now have **"C:\Users\YOUR_USERNAME\Windows_Proxy_Toggler"**.
1. Now, double-click the **"C:\Users\YOUR_USERNAME\Windows_Proxy_Toggler\toggle_proxy_on_off.vbs"** file to run it. It will automatically create a **"Proxy On-Off"** shortcut file on your desktop, with the appropriate icon to indicate whether the Proxy is ON or OFF.
1. From this point on, just click the **"Proxy On-Off"** desktop shortcut directly to toggle the Proxy on and off!
1. _If you find this useful, tell me "thank you" by [upvoting my Stack Overflow answer on this here][my_ans]._ You can also [sponsor me on GitHub here](https://github.com/sponsors/ElectricRCAircraftGuy). Consider $1/month.

That's it! See images of what the desktop shortcut and popup window look like, above. 


# Todo:

**Can someone please help me figure out how to enhance this one step further by making it change the icon name each time too?--ie: instead of saying "Proxy On-Off" on the shortcut, have it say "Proxy is ON" or "Proxy is OFF", according to its current state.** I'm not sure how to take it that one step further, and I've put enough time into it for now...


# References:
1. See my answer on Stack Overflow here: [Batch File to disable internet options proxy server](https://stackoverflow.com/questions/18439373/batch-file-to-disable-internet-options-proxy-server/44752679#44752679)
1. (Someone else's answer) [Batch File to disable internet options proxy server](https://stackoverflow.com/questions/18439373/batch-file-to-disable-internet-options-proxy-server/27092872#27092872) - taught me how to use a .vbs script to toggle the Proxy on and off 
1. (Someone else's answer) [Windows desktop widget to turn proxy on and off](https://stackoverflow.com/questions/26708347/windows-desktop-widget-to-turn-proxy-on-and-off/26708451#26708451) - taught me the ingenious technique on how to make a .vbs script act like a widget by creating a Windows shortcut and changing its icon each time you click on it.
1. Timed message boxes:
    1. \*\*\*\*\*https://technet.microsoft.com/en-us/library/ee156593.aspx
    1. https://stackoverflow.com/questions/14105157/automatically-close-msgbox-in-vbscript
1. Original source for the two icon .png images (these links are dead now): 
    1. ON icon image: http://s30.postimg.org/sgoerz0od/image.png
    1. OFF icon image: http://s13.postimg.org/9zha38zkj/off.png
1. How to convert those images to icons (.ico files): use http://icoconvert.com/, for example. Choose File (choose a .png from above) --> Upload --> choose "ICO for Windows 7, Windows 8, Vista and XP" format --> click "Convert ICO" --> click "Download your icon(s)".

Debug output:
- ex: Wscript.Echo "here is your message"


  [1]: https://i.stack.imgur.com/IqKHI.png
  [2]: https://i.stack.imgur.com/iap0E.png
  [3]: https://i.stack.imgur.com/9vWES.png
  [my_ans]: https://stackoverflow.com/questions/18439373/batch-file-to-disable-internet-options-proxy-server/44752679#44752679
