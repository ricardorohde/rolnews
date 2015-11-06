function transparent(banner, scr, lnk, height, widht, classe){
    document.write("<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0' width='"+widht+"' height='"+height+"' class='"+classe+"'>");
   document.write("<param name='movie' value='"+banner+"'>");
   document.write("<param name='quality' value='high'>");
   document.write("<param name='wmode' value='transparent'>");
  
   document.write("<param name='flashvars' value='"+scr+"'>");
   document.write("<embed src='"+banner+"' quality='high'  wmode='transparent' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' width='"+widht+"' height='"+height+"' class='"+classe+"' flashvars='scr="+scr+"&lnk="+lnk+"'></embed>");
   document.write("</object>");
}