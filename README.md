# Windows_Proxy_Toggler
A clickable icon on your Windows desktop to toggle your proxy on and off.

See [my answer on Stack Overflow][my_ans] for details and more info.

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


# Instructions



# References:
1. See my answer on Stack Overflow here: [Batch File to disable internet options proxy server](https://stackoverflow.com/questions/18439373/batch-file-to-disable-internet-options-proxy-server/44752679#44752679)
1. (Someone else's answer) [Batch File to disable internet options proxy server](https://stackoverflow.com/questions/18439373/batch-file-to-disable-internet-options-proxy-server/27092872#27092872) - taught me how to use a .vbs script to toggle the Proxy on and off 
1. (Someone else's answer) [Windows desktop widget to turn proxy on and off](https://stackoverflow.com/questions/26708347/windows-desktop-widget-to-turn-proxy-on-and-off/26708451#26708451) - taught me the ingenious technique on how to make a .vbs script act like a widget by creating a Windows shortcut and changing its icon each time you click on it.
1. Timed message boxes:
    1. \*\*\*\*\*https://technet.microsoft.com/en-us/library/ee156593.aspx
    1. https://stackoverflow.com/questions/14105157/automatically-close-msgbox-in-vbscript

Debug output:
- ex: Wscript.Echo "here is your message"


  [1]: https://i.stack.imgur.com/IqKHI.png
  [2]: https://i.stack.imgur.com/iap0E.png
  [3]: https://i.stack.imgur.com/9vWES.png
  [my_ans]: https://stackoverflow.com/questions/18439373/batch-file-to-disable-internet-options-proxy-server/44752679#44752679
