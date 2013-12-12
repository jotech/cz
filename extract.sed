#Clean up MS Word's Html export
s/<p class=MsoNormal style=.tab-stops:[0-9.cmpt ]*.>/<p>/g
s/<\/p> * *<p>/\
/g
s/&nbsp;(&nbsp;)*/\	/g
s/ *lang=CS *//g
s/ *lang=EN-US *//g
s/font-size: *[0-9.]*pt;*//g
s/font-family:[a-zA-Z" ]*;* *//g
s/ *(mso-bidi-)*mso-bidi-/mso-bidi-/g
s/mso-bidi- *color: */color:/g
s/mso-bidi- /mso-bidi-/g
s/mso-bidi-font-size: *[0-9.]*pt;*//g
s/mso-bidi-font-family: *[a-zA-Z"]*//g
s/;*font-family:[a-zA-Z"]*;*//g
s/mso-bidi-font-weight: *bold;*//g
s/mso-bidi-font-weight: *normal;*//g
s/mso-bidi-font-style: *italic;*//g
s/<span *style=';*mso-bidi-'>/<span>/g
s/<span *style=';*'>/<span>/g
s/<span *style=';*color:black;*'>([^<>]*)<\/span>/\1/g
s/<span>([^<>]*)<\/span>/\1/g
s/<u>([^<>]*)<\/u>/\\uline\{\1\}/g
s/ *	 *<\/span *>/<\/span>	/g
s/<span>([^<>]*)<\/span>/\1/g
s/<span *style=';*color:black;*'>([^<]*)<\/span>/\1/g
s/style=';*color:fuchsia;*'/style='color:red'/g
s| *style=' *' *||g
s/<span *style=';*color: *([a-z]*);*'>([^<>]*)<\/span>/{\\color{\1}\2}/g
s/<span>([^<>]*)<\/span>/\1/g
s/<b *>([^<>]*)<\/b>/\\boldface{\1}/g
s/<span>([^<>]*)<\/span>/\1/g
s/<b *>([^<>]*)<\/b>/\\boldface{\1}/g
s/<span *style=';*color: *([a-z]*);*'>([^<>]*)<\/span>/{\\color{\1}\2}/g
s/{\\color{[^{}]*} * *}//g
s/,{\\color/, {\\color/g
s/<span>([^<>]*)<\/span>/\1/g

s/<p *>([^<>]*)<\/p>/\1\
/g

s/<b *>([^<>]*)<\/b>/\\boldface{\1}/g
