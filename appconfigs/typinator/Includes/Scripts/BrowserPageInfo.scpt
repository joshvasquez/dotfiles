FasdUAS 1.101.10   ??   ??    k             l     ??  ??    ? ? "BrowserPageInfo" Library: Returns the URL and/or Title of the currently active tab in your web browser. It supports Safari, Google Chrome, Google Chrome Canary, Chromium and Webkit.     ? 	 	n   " B r o w s e r P a g e I n f o "   L i b r a r y :   R e t u r n s   t h e   U R L   a n d / o r   T i t l e   o f   t h e   c u r r e n t l y   a c t i v e   t a b   i n   y o u r   w e b   b r o w s e r .   I t   s u p p o r t s   S a f a r i ,   G o o g l e   C h r o m e ,   G o o g l e   C h r o m e   C a n a r y ,   C h r o m i u m   a n d   W e b k i t .   
  
 l     ??  ??    k eThe first parameter is the name of the browser from which to fetch information about the current URL.     ?   ? T h e   f i r s t   p a r a m e t e r   i s   t h e   n a m e   o f   t h e   b r o w s e r   f r o m   w h i c h   t o   f e t c h   i n f o r m a t i o n   a b o u t   t h e   c u r r e n t   U R L .      l     ??  ??    ? ?The second parameter can be "url" to get the page URL, "title" for its title, or "both" for a combination using Markdown syntax.     ?    T h e   s e c o n d   p a r a m e t e r   c a n   b e   " u r l "   t o   g e t   t h e   p a g e   U R L ,   " t i t l e "   f o r   i t s   t i t l e ,   o r   " b o t h "   f o r   a   c o m b i n a t i o n   u s i n g   M a r k d o w n   s y n t a x .      l     ????????  ??  ??        l     ??  ??      Power-user notes:     ?   $   P o w e r - u s e r   n o t e s :      l     ??  ??   |v * If you set the browser name to "auto", such as "auto,url", it will check if the currently active (topmost) OS X window is a supported browser and use that, or if that fails it will select the first supported browser found in the list of running processes. This mode can be very useful if you use multiple browsers and don't know which one you'll be running at any moment.     ?  ?   *   I f   y o u   s e t   t h e   b r o w s e r   n a m e   t o   " a u t o " ,   s u c h   a s   " a u t o , u r l " ,   i t   w i l l   c h e c k   i f   t h e   c u r r e n t l y   a c t i v e   ( t o p m o s t )   O S   X   w i n d o w   i s   a   s u p p o r t e d   b r o w s e r   a n d   u s e   t h a t ,   o r   i f   t h a t   f a i l s   i t   w i l l   s e l e c t   t h e   f i r s t   s u p p o r t e d   b r o w s e r   f o u n d   i n   t h e   l i s t   o f   r u n n i n g   p r o c e s s e s .   T h i s   m o d e   c a n   b e   v e r y   u s e f u l   i f   y o u   u s e   m u l t i p l e   b r o w s e r s   a n d   d o n ' t   k n o w   w h i c h   o n e   y o u ' l l   b e   r u n n i n g   a t   a n y   m o m e n t .     !   l     ?? " #??   "?? * There's a hidden 3rd parameter for enabling power-user flags. The 3rd parameter must start with a plus sign followed by individual letters for each flag you want to turn on (such as "+tymc"). Currently the only available flags are "t" and "s", and if you want to enable both of them you would use "Safari,url,+ts" as the script parameter. See the detailed descriptions of the current flags (and any future flags) in the source code below, in the 'Flag "x": ...' comments.     # ? $ $?   *   T h e r e ' s   a   h i d d e n   3 r d   p a r a m e t e r   f o r   e n a b l i n g   p o w e r - u s e r   f l a g s .   T h e   3 r d   p a r a m e t e r   m u s t   s t a r t   w i t h   a   p l u s   s i g n   f o l l o w e d   b y   i n d i v i d u a l   l e t t e r s   f o r   e a c h   f l a g   y o u   w a n t   t o   t u r n   o n   ( s u c h   a s   " + t y m c " ) .   C u r r e n t l y   t h e   o n l y   a v a i l a b l e   f l a g s   a r e   " t "   a n d   " s " ,   a n d   i f   y o u   w a n t   t o   e n a b l e   b o t h   o f   t h e m   y o u   w o u l d   u s e   " S a f a r i , u r l , + t s "   a s   t h e   s c r i p t   p a r a m e t e r .   S e e   t h e   d e t a i l e d   d e s c r i p t i o n s   o f   t h e   c u r r e n t   f l a g s   ( a n d   a n y   f u t u r e   f l a g s )   i n   t h e   s o u r c e   c o d e   b e l o w ,   i n   t h e   ' F l a g   " x " :   . . . '   c o m m e n t s .   !  % & % l     ?? ' (??   ' 3 - Version 1.1, (C) Johnny Thompson, 2016-05-03    ( ? ) ) Z   V e r s i o n   1 . 1 ,   ( C )   J o h n n y   T h o m p s o n ,   2 0 1 6 - 0 5 - 0 3 &  * + * l     ?? , -??   , ^ X Feel free to modify the script for your own use, but leave the copyright notice intact.    - ? . . ?   F e e l   f r e e   t o   m o d i f y   t h e   s c r i p t   f o r   y o u r   o w n   u s e ,   b u t   l e a v e   t h e   c o p y r i g h t   n o t i c e   i n t a c t . +  / 0 / l     ?? 1 2??   1[U If you would like to help us add support for other browsers, we welcome you to submit their necessary AppleScript commands to us (see the "allSupportedBrowsers" array in the code below for the entry format we'll need for your browser). Note that we cannot support Firefox, since they do not support getting the URL or Title via AppleScript.    2 ? 3 3?   I f   y o u   w o u l d   l i k e   t o   h e l p   u s   a d d   s u p p o r t   f o r   o t h e r   b r o w s e r s ,   w e   w e l c o m e   y o u   t o   s u b m i t   t h e i r   n e c e s s a r y   A p p l e S c r i p t   c o m m a n d s   t o   u s   ( s e e   t h e   " a l l S u p p o r t e d B r o w s e r s "   a r r a y   i n   t h e   c o d e   b e l o w   f o r   t h e   e n t r y   f o r m a t   w e ' l l   n e e d   f o r   y o u r   b r o w s e r ) .   N o t e   t h a t   w e   c a n n o t   s u p p o r t   F i r e f o x ,   s i n c e   t h e y   d o   n o t   s u p p o r t   g e t t i n g   t h e   U R L   o r   T i t l e   v i a   A p p l e S c r i p t . 0  4 5 4 l     ????????  ??  ??   5  6 7 6 i      8 9 8 I      ?? :???? 0 splitstring splitString :  ; < ; o      ???? 0 thetext theText <  =?? = o      ???? 0 thedelimiter theDelimiter??  ??   9 k     9 > >  ? @ ? q       A A ?? B?? 0 astid ASTID B ?? C?? 0 thetext theText C ?? D?? 0 thedelimiter theDelimiter D ?????? 0 lst  ??   @  E F E r      G H G n     I J I 1    ??
?? 
txdl J 1     ??
?? 
ascr H o      ???? 0 astid ASTID F  K?? K Q    9 L M N L k   	 # O O  P Q P P   	  R S?? R k     T T  U V U r     W X W o    ???? 0 thedelimiter theDelimiter X n      Y Z Y 1    ??
?? 
txdl Z 1    ??
?? 
ascr V  [?? [ r     \ ] \ n     ^ _ ^ 2    ??
?? 
citm _ o    ???? 0 thetext theText ] o      ???? 0 lst  ??   S ????
?? conscase??  ??   Q  ` a ` r      b c b o    ???? 0 astid ASTID c n      d e d 1    ??
?? 
txdl e 1    ??
?? 
ascr a  f?? f L   ! # g g o   ! "???? 0 lst  ??   M R      ?? h i
?? .ascrerr ****      ? **** h o      ???? 0 emsg eMsg i ?? j??
?? 
errn j o      ???? 0 enum eNum??   N k   + 9 k k  l m l r   + 0 n o n o   + ,???? 0 astid ASTID o n      p q p 1   - /??
?? 
txdl q 1   , -??
?? 
ascr m  r?? r R   1 9?? s t
?? .ascrerr ****      ? **** s b   5 8 u v u m   5 6 w w ? x x & C a n ' t   s p l i t S t r i n g :   v o   6 7???? 0 emsg eMsg t ?? y??
?? 
errn y o   3 4???? 0 enum eNum??  ??  ??   7  z { z l     ????????  ??  ??   {  | } | i     ~  ~ I      ?? ????? 0 replacestring replaceString ?  ? ? ? o      ???? 0 thetext theText ?  ? ? ? o      ???? 0 	oldstring 	oldString ?  ??? ? o      ???? 0 	newstring 	newString??  ??    k     E ? ?  ? ? ? q       ? ? ?? ??? 0 astid ASTID ? ?? ??? 0 thetext theText ? ?? ??? 0 	oldstring 	oldString ? ?? ??? 0 	newstring 	newString ? ?????? 0 lst  ??   ?  ? ? ? r      ? ? ? n     ? ? ? 1    ??
?? 
txdl ? 1     ??
?? 
ascr ? o      ???? 0 astid ASTID ?  ??? ? Q    E ? ? ? ? k   	 / ? ?  ? ? ? P   	 & ? ??? ? k    % ? ?  ? ? ? r     ? ? ? o    ???? 0 	oldstring 	oldString ? n      ? ? ? 1    ??
?? 
txdl ? 1    ??
?? 
ascr ?  ? ? ? r     ? ? ? n     ? ? ? 2    ??
?? 
citm ? o    ???? 0 thetext theText ? o      ???? 0 lst   ?  ? ? ? r     ? ? ? o    ???? 0 	newstring 	newString ? n      ? ? ? 1    ??
?? 
txdl ? 1    ??
?? 
ascr ?  ??? ? r     % ? ? ? c     # ? ? ? o     !???? 0 lst   ? m   ! "??
?? 
TEXT ? o      ???? 0 thetext theText??   ? ????
?? conscase??  ??   ?  ? ? ? r   ' , ? ? ? o   ' (???? 0 astid ASTID ? n      ? ? ? 1   ) +??
?? 
txdl ? 1   ( )??
?? 
ascr ?  ??? ? L   - / ? ? o   - .???? 0 thetext theText??   ? R      ?? ? ?
?? .ascrerr ****      ? **** ? o      ???? 0 emsg eMsg ? ?? ???
?? 
errn ? o      ???? 0 enum eNum??   ? k   7 E ? ?  ? ? ? r   7 < ? ? ? o   7 8???? 0 astid ASTID ? n      ? ? ? 1   9 ;??
?? 
txdl ? 1   8 9??
?? 
ascr ?  ??? ? R   = E?? ? ?
?? .ascrerr ****      ? **** ? b   A D ? ? ? m   A B ? ? ? ? ? * C a n ' t   r e p l a c e S t r i n g :   ? o   B C???? 0 emsg eMsg ? ?? ???
?? 
errn ? o   ? @???? 0 enum eNum??  ??  ??   }  ? ? ? l     ????????  ??  ??   ?  ? ? ? i     ? ? ? I      ?? ????? 0 silencehelper silenceHelper ?  ? ? ? o      ???? 0 silence   ?  ??? ? o      ???? 0 txt  ??  ??   ? k      ? ?  ? ? ? l     ?? ? ???   ? f ` Makes it easy and clean to support message silencing, by passing "true" as the first parameter.    ? ? ? ? ?   M a k e s   i t   e a s y   a n d   c l e a n   t o   s u p p o r t   m e s s a g e   s i l e n c i n g ,   b y   p a s s i n g   " t r u e "   a s   t h e   f i r s t   p a r a m e t e r . ?  ??? ? Z      ? ??? ? ? l     ????? ? =     ? ? ? o     ???? 0 silence   ? m    ??
?? boovtrue??  ??   ? L     ? ? m     ? ? ? ? ?  ??   ? L     ? ? o    ?? 0 txt  ??   ?  ? ? ? l     ?~?}?|?~  ?}  ?|   ?  ??{ ? i     ? ? ? I      ?z ??y?z 
0 expand   ?  ??x ? o      ?w?w 0 rawargs rawArgs?x  ?y   ? l   ? ? ? ? ? k    ? ? ?  ? ? ? l     ?v ? ??v   ? S M Determine what browser to check and whether to get the url or title or both.    ? ? ? ? ?   D e t e r m i n e   w h a t   b r o w s e r   t o   c h e c k   a n d   w h e t h e r   t o   g e t   t h e   u r l   o r   t i t l e   o r   b o t h . ?  ? ? ? Z      ? ??u?t ? l     ??s?r ? >     ?  ? n      m    ?q
?q 
pcls o     ?p?p 0 rawargs rawArgs  m    ?o
?o 
TEXT?s  ?r   ? L    
 m    	 ? j ' Y o u   m u s t   g i v e   t h i s   s c r i p t   a   s i n g l e   s t r i n g   p a r a m e t e r '?u  ?t   ?  r    	 n   

 I    ?n?m?n 0 splitstring splitString  o    ?l?l 0 rawargs rawArgs ?k m     ?  ,?k  ?m    f    	 o      ?j?j 0 args    Z    )?i?h l    ?g?f A      l   ?e?d I   ?c?b
?c .corecnte****       **** o    ?a?a 0 args  ?b  ?e  ?d   m    ?`?` ?g  ?f   L   # % m   # $ ? t ' T h e   s c r i p t   n e e d s   a t   l e a s t   t w o   c o m m a - s e p a r a t e d   p a r a m e t e r s '?i  ?h    r   * 0 !  n   * ."#" 4   + .?_$
?_ 
cobj$ m   , -?^?^ # o   * +?]?] 0 args  ! o      ?\?\ 0 
thebrowser 
theBrowser %&% r   1 7'(' n   1 5)*) 4   2 5?[+
?[ 
cobj+ m   3 4?Z?Z * o   1 2?Y?Y 0 args  ( o      ?X?X 
0 wanted  & ,-, l  8 8?W?V?U?W  ?V  ?U  - ./. l  8 8?T01?T  0 ' ! Validate the "wanted" parameter.   1 ?22 B   V a l i d a t e   t h e   " w a n t e d "   p a r a m e t e r ./ 343 Z   8 T56?S?R5 F   8 K787 F   8 C9:9 l  8 ;;?Q?P; >  8 ;<=< o   8 9?O?O 
0 wanted  = m   9 :>> ???  u r l?Q  ?P  : l  > A@?N?M@ >  > AABA o   > ??L?L 
0 wanted  B m   ? @CC ?DD 
 t i t l e?N  ?M  8 l  F IE?K?JE >  F IFGF o   F G?I?I 
0 wanted  G m   G HHH ?II  b o t h?K  ?J  6 L   N PJJ m   N OKK ?LL ? ' I n v a l i d   s e c o n d   a r g u m e n t ,   m u s t   b e   o n e   o f   t h e s e :   u r l ,   t i t l e ,   b o t h . '?S  ?R  4 MNM l  U U?H?G?F?H  ?G  ?F  N OPO l  U U?EQR?E  Q ? ? Look for power-user flags (via a third hidden argument which must start with a plus sign followed by individual letters for each flag, such as "Safari,url,+t"; if it doesn't start with a plus, it's ignored)   R ?SS?   L o o k   f o r   p o w e r - u s e r   f l a g s   ( v i a   a   t h i r d   h i d d e n   a r g u m e n t   w h i c h   m u s t   s t a r t   w i t h   a   p l u s   s i g n   f o l l o w e d   b y   i n d i v i d u a l   l e t t e r s   f o r   e a c h   f l a g ,   s u c h   a s   " S a f a r i , u r l , + t " ;   i f   i t   d o e s n ' t   s t a r t   w i t h   a   p l u s ,   i t ' s   i g n o r e d )P TUT r   U XVWV m   U V?D
?D boovfalsW o      ?C?C *0 flags_mustbetopmost flags_mustBeTopmostU XYX r   Y \Z[Z m   Y Z?B
?B boovfals[ o      ?A?A *0 flags_silenceerrors flags_silenceErrorsY \]\ Z   ] ?^_?@??^ l  ] d`?>?=` @   ] daba l  ] bc?<?;c I  ] b?:d?9
?: .corecnte****       ****d o   ] ^?8?8 0 args  ?9  ?<  ?;  b m   b c?7?7 ?>  ?=  _ k   g ?ee fgf r   g mhih n   g kjkj 4   h k?6l
?6 
cobjl m   i j?5?5 k o   g h?4?4 0 args  i o      ?3?3 0 flagargs  g m?2m Z   n ?no?1?0n l  n {p?/?.p =  n {qrq l  n ys?-?,s I  n y?+?*t
?+ .sysooffslong    ??? null?*  t ?)uv
?) 
psofu m   p qww ?xx  +v ?(y?'
?( 
psiny o   r s?&?& 0 flagargs  ?'  ?-  ?,  r m   y z?%?% ?/  ?.  o k   ~ ?zz {|{ l  ~ ~?$}~?$  } Z T It starts with a plus like a valid flag parameter, so look for all supported flags.   ~ ? ?   I t   s t a r t s   w i t h   a   p l u s   l i k e   a   v a l i d   f l a g   p a r a m e t e r ,   s o   l o o k   f o r   a l l   s u p p o r t e d   f l a g s .| ??#? P   ~ ????"? k   ? ??? ??? l  ? ??!???!  ? ? ? Flag "t": The desired browser must be running and must be the current topmost/active window, otherwise the script will abort with an error message.   ? ???(   F l a g   " t " :   T h e   d e s i r e d   b r o w s e r   m u s t   b e   r u n n i n g   a n d   m u s t   b e   t h e   c u r r e n t   t o p m o s t / a c t i v e   w i n d o w ,   o t h e r w i s e   t h e   s c r i p t   w i l l   a b o r t   w i t h   a n   e r r o r   m e s s a g e .? ??? Z   ? ???? ?? l  ? ????? >  ? ???? l  ? ????? I  ? ????
? .sysooffslong    ??? null?  ? ???
? 
psof? m   ? ??? ???  t? ???
? 
psin? o   ? ??? 0 flagargs  ?  ?  ?  ? m   ? ???  ?  ?  ? r   ? ???? m   ? ??
? boovtrue? o      ?? *0 flags_mustbetopmost flags_mustBeTopmost?   ?  ? ??? l  ? ?????  ?3- Flag "s": Silences *all* error messages, so that there's never any output if a browser is missing, not running, not topmost, or if there's an AppleScript error. The only error messages that will get through are when the parameters to the script are invalid, since parameter count and values are checked before flags are processed. This means that if you've written the parameters correctly (which you should only have to do once), then the only script output will be URLs/Titles, and only if all conditions are perfect, otherwise it outputs nothing at all.   ? ???Z   F l a g   " s " :   S i l e n c e s   * a l l *   e r r o r   m e s s a g e s ,   s o   t h a t   t h e r e ' s   n e v e r   a n y   o u t p u t   i f   a   b r o w s e r   i s   m i s s i n g ,   n o t   r u n n i n g ,   n o t   t o p m o s t ,   o r   i f   t h e r e ' s   a n   A p p l e S c r i p t   e r r o r .   T h e   o n l y   e r r o r   m e s s a g e s   t h a t   w i l l   g e t   t h r o u g h   a r e   w h e n   t h e   p a r a m e t e r s   t o   t h e   s c r i p t   a r e   i n v a l i d ,   s i n c e   p a r a m e t e r   c o u n t   a n d   v a l u e s   a r e   c h e c k e d   b e f o r e   f l a g s   a r e   p r o c e s s e d .   T h i s   m e a n s   t h a t   i f   y o u ' v e   w r i t t e n   t h e   p a r a m e t e r s   c o r r e c t l y   ( w h i c h   y o u   s h o u l d   o n l y   h a v e   t o   d o   o n c e ) ,   t h e n   t h e   o n l y   s c r i p t   o u t p u t   w i l l   b e   U R L s / T i t l e s ,   a n d   o n l y   i f   a l l   c o n d i t i o n s   a r e   p e r f e c t ,   o t h e r w i s e   i t   o u t p u t s   n o t h i n g   a t   a l l .? ??? Z   ? ?????? l  ? ????? >  ? ???? l  ? ????
? I  ? ??	??
?	 .sysooffslong    ??? null?  ? ???
? 
psof? m   ? ??? ???  s? ???
? 
psin? o   ? ??? 0 flagargs  ?  ?  ?
  ? m   ? ???  ?  ?  ? r   ? ???? m   ? ??
? boovtrue? o      ?? *0 flags_silenceerrors flags_silenceErrors?  ?  ?  ? ? ??
?  conscase??  ?"  ?#  ?1  ?0  ?2  ?@  ??  ] ??? l  ? ?????????  ??  ??  ? ???? Q   ?????? k   ???? ??? l  ? ???????  ? L F The current list of supported browsers. Easy to extend in the future.   ? ??? ?   T h e   c u r r e n t   l i s t   o f   s u p p o r t e d   b r o w s e r s .   E a s y   t o   e x t e n d   i n   t h e   f u t u r e .? ??? r   ?\??? J   ?Z?? ??? l 	 ? ??????? K   ? ??? ?????? 0 appname appName? m   ? ??? ???  S a f a r i? ??????? 0 cmds  ? K   ? ??? ?????? 0 cmdurl cmdURL? m   ? ??? ??? * U R L   o f   f r o n t   d o c u m e n t? ??????? 0 cmdtitle cmdTitle? m   ? ??? ??? , n a m e   o f   f r o n t   d o c u m e n t??  ??  ??  ??  ? ??? l 	 ? ??????? K   ? ??? ?????? 0 appname appName? m   ? ??? ???  G o o g l e   C h r o m e? ??????? 0 cmds  ? K   ? ??? ?????? 0 cmdurl cmdURL? m   ? ??? ??? B U R L   o f   a c t i v e   t a b   o f   f r o n t   w i n d o w? ??????? 0 cmdtitle cmdTitle? m   ? ??? ??? F t i t l e   o f   a c t i v e   t a b   o f   f r o n t   w i n d o w??  ??  ??  ??  ? ??? l 	 ??????? K   ??? ?????? 0 appname appName? m  ?? ??? ( G o o g l e   C h r o m e   C a n a r y? ??????? 0 cmds  ? K  ?? ?????? 0 cmdurl cmdURL? m  ?? ??? B U R L   o f   a c t i v e   t a b   o f   f r o n t   w i n d o w? ??????? 0 cmdtitle cmdTitle? m  ?? ??? F t i t l e   o f   a c t i v e   t a b   o f   f r o n t   w i n d o w??  ??  ??  ??  ? ??? l 	9?????? K  9?? ?????? 0 appname appName? m  "?? ???  C h r o m i u m? ??????? 0 cmds  ? K  %5?? ?????? 0 cmdurl cmdURL? m  (+?? ??? B U R L   o f   a c t i v e   t a b   o f   f r o n t   w i n d o w? ??????? 0 cmdtitle cmdTitle? m  .1   ? F t i t l e   o f   a c t i v e   t a b   o f   f r o n t   w i n d o w??  ??  ??  ??  ? ?? l 	9V???? l 
9V???? K  9V ???? 0 appname appName m  <? ?		  W e b k i t ??
???? 0 cmds  
 K  BR ???? 0 cmdurl cmdURL m  EH ? * U R L   o f   f r o n t   d o c u m e n t ?????? 0 cmdtitle cmdTitle m  KN ? , n a m e   o f   f r o n t   d o c u m e n t??  ??  ??  ??  ??  ??  ??  ? o      ???? ,0 allsupportedbrowsers allSupportedBrowsers?  l ]]????????  ??  ??    l ]]????   ? | Get the name of the currently active application (such as "Safari"). It's used by several optional features in this script.    ? ?   G e t   t h e   n a m e   o f   t h e   c u r r e n t l y   a c t i v e   a p p l i c a t i o n   ( s u c h   a s   " S a f a r i " ) .   I t ' s   u s e d   b y   s e v e r a l   o p t i o n a l   f e a t u r e s   i n   t h i s   s c r i p t .  O ]} r  c| 6 cz !  n  cm"#" 1  im??
?? 
pnam# 4 ci??$
?? 
pcap$ m  gh???? ! = py%&% 1  qu??
?? 
pisf& m  vx??
?? boovtrue o      ???? 0 activeappname activeAppName m  ]`''?                                                                                  sevs  alis    t  HD                         ?}vH+     ?System Events.app                                               ???2ۇ        ????  	                CoreServices    ?|?f      ?2?w       ?   ?   ?  3HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ??   ()( l ~~????????  ??  ??  ) *+* l ~~??,-??  , ? ? Resolve the "auto" browser type (if given by the user) by replacing it with the name of the best-matching, currently running, supported browser. If no match is found, we'll abort processing.   - ?..~   R e s o l v e   t h e   " a u t o "   b r o w s e r   t y p e   ( i f   g i v e n   b y   t h e   u s e r )   b y   r e p l a c i n g   i t   w i t h   t h e   n a m e   o f   t h e   b e s t - m a t c h i n g ,   c u r r e n t l y   r u n n i n g ,   s u p p o r t e d   b r o w s e r .   I f   n o   m a t c h   i s   f o u n d ,   w e ' l l   a b o r t   p r o c e s s i n g .+ /0/ Z  ~#12????1 l ~?3????3 = ~?454 o  ~???? 0 
thebrowser 
theBrowser5 m  ?66 ?77  a u t o??  ??  2 k  ?88 9:9 r  ??;<; m  ????
?? boovfals< o      ???? 0 	foundauto 	foundAuto: =>= l ?????@??  ? ? ? First check if the topmost (currently active) application is one of the supported browsers. If so choose that one, so that people with multiple browsers running simultaneously get the most proper results when one of them is active.   @ ?AA?   F i r s t   c h e c k   i f   t h e   t o p m o s t   ( c u r r e n t l y   a c t i v e )   a p p l i c a t i o n   i s   o n e   o f   t h e   s u p p o r t e d   b r o w s e r s .   I f   s o   c h o o s e   t h a t   o n e ,   s o   t h a t   p e o p l e   w i t h   m u l t i p l e   b r o w s e r s   r u n n i n g   s i m u l t a n e o u s l y   g e t   t h e   m o s t   p r o p e r   r e s u l t s   w h e n   o n e   o f   t h e m   i s   a c t i v e .> BCB X  ??D??ED Z  ??FG????F l ??H????H = ??IJI o  ?????? 0 activeappname activeAppNameJ l ??K????K n  ??LML o  ?????? 0 appname appNameM o  ?????? 0 anitem anItem??  ??  ??  ??  G k  ??NN OPO r  ??QRQ m  ????
?? boovtrueR o      ???? 0 	foundauto 	foundAutoP STS r  ??UVU n  ??WXW o  ?????? 0 appname appNameX o  ?????? 0 anitem anItemV o      ???? 0 
thebrowser 
theBrowserT Y??Y  S  ????  ??  ??  ?? 0 anitem anItemE o  ?????? ,0 allsupportedbrowsers allSupportedBrowsersC Z[Z l ????\]??  \ ? ? If the topmost app wasn't one of the supported browsers, we'll now scan all running applications to look for a supported browser, in the order that they're listed in the "allSupportedBrowsers" array.   ] ?^^?   I f   t h e   t o p m o s t   a p p   w a s n ' t   o n e   o f   t h e   s u p p o r t e d   b r o w s e r s ,   w e ' l l   n o w   s c a n   a l l   r u n n i n g   a p p l i c a t i o n s   t o   l o o k   f o r   a   s u p p o r t e d   b r o w s e r ,   i n   t h e   o r d e r   t h a t   t h e y ' r e   l i s t e d   i n   t h e   " a l l S u p p o r t e d B r o w s e r s "   a r r a y .[ _`_ Z  ?ab????a l ??c????c H  ??dd o  ?????? 0 	foundauto 	foundAuto??  ??  b k  ?ee fgf l ????hi??  h z t Get an array with the names of all currently running apps, such as "{"loginwindow", "Dock", "Google Chrome", ...}".   i ?jj ?   G e t   a n   a r r a y   w i t h   t h e   n a m e s   o f   a l l   c u r r e n t l y   r u n n i n g   a p p s ,   s u c h   a s   " { " l o g i n w i n d o w " ,   " D o c k " ,   " G o o g l e   C h r o m e " ,   . . . } " .g klk O ??mnm r  ??opo l ??q????q n  ??rsr 1  ????
?? 
pnams 2 ????
?? 
prcs??  ??  p o      ???? 0 runningapps runningAppsn m  ??tt?                                                                                  sevs  alis    t  HD                         ?}vH+     ?System Events.app                                               ???2ۇ        ????  	                CoreServices    ?|?f      ?2?w       ?   ?   ?  3HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    H D  -System/Library/CoreServices/System Events.app   / ??  l uvu l ????wx??  w h b Now look for each supported browser in the list of running apps and select the first one we find.   x ?yy ?   N o w   l o o k   f o r   e a c h   s u p p o r t e d   b r o w s e r   i n   t h e   l i s t   o f   r u n n i n g   a p p s   a n d   s e l e c t   t h e   f i r s t   o n e   w e   f i n d .v z??z X  ?{??|{ Z  ?}~????} l ?????? E  ????? o  ?????? 0 runningapps runningApps? l ???????? n  ????? o  ?????? 0 appname appName? o  ?????? 0 anitem anItem??  ??  ??  ??  ~ k  ???? ??? r  ????? m  ????
?? boovtrue? o      ???? 0 	foundauto 	foundAuto? ??? r  ????? n  ????? o  ?????? 0 appname appName? o  ?????? 0 anitem anItem? o      ???? 0 
thebrowser 
theBrowser? ????  S  ????  ??  ??  ?? 0 anitem anItem| o  ?????? ,0 allsupportedbrowsers allSupportedBrowsers??  ??  ??  ` ??? l ??????  ? ? z If we were unable to resolve "auto" to the name of a supported and currently running browser, then we have to abort here.   ? ??? ?   I f   w e   w e r e   u n a b l e   t o   r e s o l v e   " a u t o "   t o   t h e   n a m e   o f   a   s u p p o r t e d   a n d   c u r r e n t l y   r u n n i n g   b r o w s e r ,   t h e n   w e   h a v e   t o   a b o r t   h e r e .? ???? Z  ??????? l ?????? H  ?? o  ???? 0 	foundauto 	foundAuto??  ??  ? L  ?? n ??? I  ?????? 0 silencehelper silenceHelper? ??? o  ?~?~ *0 flags_silenceerrors flags_silenceErrors? ??}? m  ?? ??? ? ' A u t o - b r o w s e r   d e t e c t i o n   c o u l d   n o t   f i n d   a n y   r u n n i n g   s u p p o r t e d   w e b   b r o w s e r '?}  ?  ?  f  ??  ??  ??  ??  ??  0 ??? l $$?|?{?z?|  ?{  ?z  ? ??? l $$?y???y  ? R L Ensure that the browser is supported and get the necessary commands for it.   ? ??? ?   E n s u r e   t h a t   t h e   b r o w s e r   i s   s u p p o r t e d   a n d   g e t   t h e   n e c e s s a r y   c o m m a n d s   f o r   i t .? ??? r  $)??? m  $'?x
?x 
msng? o      ?w?w 0 browsercmds browserCmds? ??? r  *-??? m  *+?v
?v boovfals? o      ?u?u (0 issupportedbrowser isSupportedBrowser? ??? X  .`??t?? Z  @[???s?r? l @G??q?p? = @G??? o  @A?o?o 0 
thebrowser 
theBrowser? l AF??n?m? n  AF??? o  BF?l?l 0 appname appName? o  AB?k?k 0 anitem anItem?n  ?m  ?q  ?p  ? k  JW?? ??? r  JM??? m  JK?j
?j boovtrue? o      ?i?i (0 issupportedbrowser isSupportedBrowser? ??? r  NU??? n  NS??? o  OS?h?h 0 cmds  ? o  NO?g?g 0 anitem anItem? o      ?f?f 0 browsercmds browserCmds? ??e?  S  VW?e  ?s  ?r  ?t 0 anitem anItem? o  12?d?d ,0 allsupportedbrowsers allSupportedBrowsers? ??? Z  az???c?b? l ac??a?`? H  ac?? o  ab?_?_ (0 issupportedbrowser isSupportedBrowser?a  ?`  ? L  fv?? n fu??? I  gu?^??]?^ 0 silencehelper silenceHelper? ??? o  gh?\?\ *0 flags_silenceerrors flags_silenceErrors? ??[? b  hq??? b  hm??? m  hk?? ???  ' T h e   "? o  kl?Z?Z 0 
thebrowser 
theBrowser? m  mp?? ??? T "   b r o w s e r   i s   n o t   s u p p o r t e d   b y   t h i s   s c r i p t '?[  ?]  ?  f  fg?c  ?b  ? ??? l {{?Y?X?W?Y  ?X  ?W  ? ??? l {{?V???V  ? ? ? Topmost flag handling: If the given/detected browser isn't the currently active OS X window, then just return an error message, or an empty string (if the silence flag is also specified).   ? ???x   T o p m o s t   f l a g   h a n d l i n g :   I f   t h e   g i v e n / d e t e c t e d   b r o w s e r   i s n ' t   t h e   c u r r e n t l y   a c t i v e   O S   X   w i n d o w ,   t h e n   j u s t   r e t u r n   a n   e r r o r   m e s s a g e ,   o r   a n   e m p t y   s t r i n g   ( i f   t h e   s i l e n c e   f l a g   i s   a l s o   s p e c i f i e d ) .? ??? Z  {????U?T? F  {???? l {|??S?R? o  {|?Q?Q *0 flags_mustbetopmost flags_mustBeTopmost?S  ?R  ? l ???P?O? > ???? o  ??N?N 0 activeappname activeAppName? o  ???M?M 0 
thebrowser 
theBrowser?P  ?O  ? L  ???? n ????? I  ???L??K?L 0 silencehelper silenceHelper? ??? o  ???J?J *0 flags_silenceerrors flags_silenceErrors? ??I? b  ????? b  ????? m  ???? ???  ' T h e   "? o  ???H?H 0 
thebrowser 
theBrowser? m  ???? ??? H "   b r o w s e r   i s   n o t   t h e   t o p m o s t   w i n d o w '?I  ?K  ?  f  ???U  ?T  ?    l ???G?F?E?G  ?F  ?E    l ???D?D  	 Get the bundle name (such as "com.apple.Safari"), to allow us to talk to the browser dynamically in a reliable way. If the browser app bundle can't be automatically found by the system, the user will be prompted by AppleScript to navigate to the application.    ?   G e t   t h e   b u n d l e   n a m e   ( s u c h   a s   " c o m . a p p l e . S a f a r i " ) ,   t o   a l l o w   u s   t o   t a l k   t o   t h e   b r o w s e r   d y n a m i c a l l y   i n   a   r e l i a b l e   w a y .   I f   t h e   b r o w s e r   a p p   b u n d l e   c a n ' t   b e   a u t o m a t i c a l l y   f o u n d   b y   t h e   s y s t e m ,   t h e   u s e r   w i l l   b e   p r o m p t e d   b y   A p p l e S c r i p t   t o   n a v i g a t e   t o   t h e   a p p l i c a t i o n .  r  ??	
	 n  ?? 1  ???C
?C 
ID   4  ???B
?B 
capp o  ???A?A 0 
thebrowser 
theBrowser
 o      ?@?@ 0 browserappid browserAppId  l ?????>?=??  ?>  ?=    l ???<?<   ? ? We'll only talk to the browser if it's running, otherwise AppleScript would cause it to be launched if it was closed, which people usually don't want.    ?.   W e ' l l   o n l y   t a l k   t o   t h e   b r o w s e r   i f   i t ' s   r u n n i n g ,   o t h e r w i s e   A p p l e S c r i p t   w o u l d   c a u s e   i t   t o   b e   l a u n c h e d   i f   i t   w a s   c l o s e d ,   w h i c h   p e o p l e   u s u a l l y   d o n ' t   w a n t .  Z  ???; = ?? n  ?? 1  ???:
?: 
prun 5  ???9?8
?9 
capp o  ???7?7 0 browserappid browserAppId
?8 kfrmID   m  ???6
?6 boovtrue k  ??  !  r  ??"#" m  ???5
?5 
msng# o      ?4?4 0 currenttaburl currentTabURL! $%$ r  ??&'& m  ???3
?3 
msng' o      ?2?2 "0 currenttabtitle currentTabTitle% ()( l ???1?0?/?1  ?0  ?/  ) *+* l ???.,-?.  , f ` Wrapping the application calls in "run script" makes those lines compile dynamically on demand.   - ?.. ?   W r a p p i n g   t h e   a p p l i c a t i o n   c a l l s   i n   " r u n   s c r i p t "   m a k e s   t h o s e   l i n e s   c o m p i l e   d y n a m i c a l l y   o n   d e m a n d .+ /0/ l ???-12?-  1 l f It allows us to dynamically decide how to talk to each specific browser, without any code repetition.   2 ?33 ?   I t   a l l o w s   u s   t o   d y n a m i c a l l y   d e c i d e   h o w   t o   t a l k   t o   e a c h   s p e c i f i c   b r o w s e r ,   w i t h o u t   a n y   c o d e   r e p e t i t i o n .0 454 Z  ??67?,?+6 G  ??898 l ??:?*?): = ??;<; o  ???(?( 
0 wanted  < m  ??== ?>>  u r l?*  ?)  9 l ????'?&? = ??@A@ o  ???%?% 
0 wanted  A m  ??BB ?CC  b o t h?'  ?&  7 r  ??DED c  ??FGF l ??H?$?#H I ???"I?!
?" .sysodsct****        scptI b  ??JKJ b  ??LML b  ??NON m  ??PP ?QQ * t e l l   a p p l i c a t i o n   i d   "O o  ??? ?  0 browserappid browserAppIdM m  ??RR ?SS  "   t o   r e t u r n  K n  ??TUT o  ???? 0 cmdurl cmdURLU o  ???? 0 browsercmds browserCmds?!  ?$  ?#  G m  ???
? 
TEXTE o      ?? 0 currenttaburl currentTabURL?,  ?+  5 VWV Z  ?&XY??X G  ?Z[Z l ??\??\ = ??]^] o  ???? 
0 wanted  ^ m  ??__ ?`` 
 t i t l e?  ?  [ l ?a??a = ?bcb o  ? ?? 
0 wanted  c m   dd ?ee  b o t h?  ?  Y r  	"fgf c  	hih l 	j??j I 	?k?
? .sysodsct****        scptk b  	lml b  	non b  	pqp m  	rr ?ss * t e l l   a p p l i c a t i o n   i d   "q o  ?? 0 browserappid browserAppIdo m  tt ?uu  "   t o   r e t u r n  m n  vwv o  ?? 0 cmdtitle cmdTitlew o  ?? 0 browsercmds browserCmds?  ?  ?  i m  ?
? 
TEXTg o      ?? "0 currenttabtitle currentTabTitle?  ?  W xyx l ''?
?	??
  ?	  ?  y z{z l ''?|}?  | d ^ If they wanted both the title and URL, we'll have to format the resulting string accordingly.   } ?~~ ?   I f   t h e y   w a n t e d   b o t h   t h e   t i t l e   a n d   U R L ,   w e ' l l   h a v e   t o   f o r m a t   t h e   r e s u l t i n g   s t r i n g   a c c o r d i n g l y .{ ? r  '.??? m  '*?? ???  ? o      ?? 0 finalstring finalString? ??? Z  /?????? l /4???? = /4??? o  /0?? 
0 wanted  ? m  03?? ???  b o t h?  ?  ? k  7z?? ??? l 77????  ?qk Special handling of Markdown output: We will replace any [ or ] brackets in the title of the page with regular parenthesis, since they would otherwise interfere with the markdown. We'll also replace any parenthesis in the URL itself with their URL-encoded equivalents, since some old/basic Markdown parsers can otherwise misunderstand them as the end of the URL.   ? ????   S p e c i a l   h a n d l i n g   o f   M a r k d o w n   o u t p u t :   W e   w i l l   r e p l a c e   a n y   [   o r   ]   b r a c k e t s   i n   t h e   t i t l e   o f   t h e   p a g e   w i t h   r e g u l a r   p a r e n t h e s i s ,   s i n c e   t h e y   w o u l d   o t h e r w i s e   i n t e r f e r e   w i t h   t h e   m a r k d o w n .   W e ' l l   a l s o   r e p l a c e   a n y   p a r e n t h e s i s   i n   t h e   U R L   i t s e l f   w i t h   t h e i r   U R L - e n c o d e d   e q u i v a l e n t s ,   s i n c e   s o m e   o l d / b a s i c   M a r k d o w n   p a r s e r s   c a n   o t h e r w i s e   m i s u n d e r s t a n d   t h e m   a s   t h e   e n d   o f   t h e   U R L .? ?? ? r  7z??? c  7v??? l 7t?????? b  7t??? b  7p??? b  7X??? b  7T??? m  7:?? ???  [? n :S??? I  ;S??????? 0 replacestring replaceString? ??? n ;I??? I  <I??????? 0 replacestring replaceString? ??? o  <????? "0 currenttabtitle currentTabTitle? ??? m  ?B?? ???  [? ???? m  BE?? ???  (??  ??  ?  f  ;<? ??? m  IL?? ???  ]? ???? m  LO?? ???  )??  ??  ?  f  :;? m  TW?? ???  ] (? n Xo??? I  Yo??????? 0 replacestring replaceString? ??? n Ye??? I  Ze??????? 0 replacestring replaceString? ??? o  Z[???? 0 currenttaburl currentTabURL? ??? m  [^?? ???  (? ???? m  ^a?? ???  % 2 8??  ??  ?  f  YZ? ??? m  eh?? ???  )? ???? m  hk?? ???  % 2 9??  ??  ?  f  XY? m  ps?? ???  )??  ??  ? m  tu??
?? 
TEXT? o      ???? 0 finalstring finalString?   ? ??? l }??????? = }???? o  }~???? 
0 wanted  ? m  ~??? ??? 
 t i t l e??  ??  ? ??? r  ????? c  ????? o  ?????? "0 currenttabtitle currentTabTitle? m  ????
?? 
TEXT? o      ???? 0 finalstring finalString? ??? l ???????? = ????? o  ?????? 
0 wanted  ? m  ???? ???  u r l??  ??  ? ???? r  ????? c  ????? o  ?????? 0 currenttaburl currentTabURL? m  ????
?? 
TEXT? o      ???? 0 finalstring finalString??  ?  ? ??? l ??????????  ??  ??  ? ??? l ????????  ?   We're done!   ? ???    W e ' r e   d o n e !? ???? L  ???? o  ?????? 0 finalstring finalString??  ?;   L  ???? n ????? I  ????????? 0 silencehelper silenceHelper? ? ? o  ?????? *0 flags_silenceerrors flags_silenceErrors  ?? b  ?? b  ?? m  ?? ?  ' T h e   " o  ?????? 0 
thebrowser 
theBrowser m  ?? ?		 2 "   b r o w s e r   i s   n o t   r u n n i n g '??  ??  ?  f  ?? 
??
 l ??????????  ??  ??  ??  ? R      ????
?? .ascrerr ****      ? **** o      ???? 0 emsg eMsg??  ? k  ??  l ??????   ? ? This even catches errors generated by the dynamic "run script" commands above, such as if the browser doesn't understand the command.    ?   T h i s   e v e n   c a t c h e s   e r r o r s   g e n e r a t e d   b y   t h e   d y n a m i c   " r u n   s c r i p t "   c o m m a n d s   a b o v e ,   s u c h   a s   i f   t h e   b r o w s e r   d o e s n ' t   u n d e r s t a n d   t h e   c o m m a n d . ?? L  ?? n ?? I  ???????? 0 silencehelper silenceHelper  o  ?????? *0 flags_silenceerrors flags_silenceErrors ?? b  ?? b  ?? m  ?? ? & A p p l e S c r i p t   E r r o r   [ o  ?????? 0 emsg eMsg m  ??   ?!!  ]??  ??    f  ????  ??   ? ' ! parameter: Safari,url/title/both    ? ?"" B   p a r a m e t e r :   S a f a r i , u r l / t i t l e / b o t h?{       ??#$%&'??  # ?????????? 0 splitstring splitString?? 0 replacestring replaceString?? 0 silencehelper silenceHelper?? 
0 expand  $ ?? 9????()???? 0 splitstring splitString?? ??*?? *  ?????? 0 thetext theText?? 0 thedelimiter theDelimiter??  ( ?????????????? 0 thetext theText?? 0 thedelimiter theDelimiter?? 0 astid ASTID?? 0 lst  ?? 0 emsg eMsg?? 0 enum eNum) ???? S????+?? w
?? 
ascr
?? 
txdl
?? 
citm?? 0 emsg eMsg+ ??????
?? 
errn?? 0 enum eNum??  
?? 
errn?? :??,E?O ?g ???,FO??-E?VO???,FO?W X  ???,FO)??l??%% ?? ????,-???? 0 replacestring replaceString?? ??.?? .  ???????? 0 thetext theText?? 0 	oldstring 	oldString?? 0 	newstring 	newString??  , ???????????????? 0 thetext theText?? 0 	oldstring 	oldString?? 0 	newstring 	newString?? 0 astid ASTID?? 0 lst  ?? 0 emsg eMsg?? 0 enum eNum- 	???? ???????/?? ?
?? 
ascr
?? 
txdl
?? 
citm
?? 
TEXT?? 0 emsg eMsg/ ??????
?? 
errn?? 0 enum eNum??  
?? 
errn?? F??,E?O +?g ???,FO??-E?O???,FO??&E?VO???,FO?W X  ???,FO)??l??%& ?? ?????01???? 0 silencehelper silenceHelper?? ??2?? 2  ?????? 0 silence  ?? 0 txt  ??  0 ?????? 0 silence  ?? 0 txt  1  ??? ?e  ?Y ?' ?? ?????34???? 
0 expand  ?? ??5?? 5  ???? 0 rawargs rawArgs??  3 ????????????????~?}?|?{?z?y?x?w?v?u?t?? 0 rawargs rawArgs?? 0 args  ?? 0 
thebrowser 
theBrowser?? 
0 wanted  ?? *0 flags_mustbetopmost flags_mustBeTopmost?? *0 flags_silenceerrors flags_silenceErrors?? 0 flagargs  ? ,0 allsupportedbrowsers allSupportedBrowsers?~ 0 activeappname activeAppName?} 0 	foundauto 	foundAuto?| 0 anitem anItem?{ 0 runningapps runningApps?z 0 browsercmds browserCmds?y (0 issupportedbrowser isSupportedBrowser?x 0 browserappid browserAppId?w 0 currenttaburl currentTabURL?v "0 currenttabtitle currentTabTitle?u 0 finalstring finalString?t 0 emsg eMsg4 [?s?r?q?p?o>C?nHK?mw?l?k?j????i??h?g??f????????? ?e'?d?c6?b6?a?`??_?^?????]?\?[?Z=BPR?Y_drt??????X???????????W?V 
?s 
pcls
?r 
TEXT?q 0 splitstring splitString
?p .corecnte****       ****
?o 
cobj
?n 
bool
?m 
psof
?l 
psin?k 
?j .sysooffslong    ??? null?i 0 appname appName?h 0 cmds  ?g 0 cmdurl cmdURL?f 0 cmdtitle cmdTitle?e 
?d 
pcap
?c 
pnam6  
?b 
pisf
?a 
kocl
?` 
prcs?_ 0 silencehelper silenceHelper
?^ 
msng
?] 
capp
?\ 
ID  
?[ kfrmID  
?Z 
prun
?Y .sysodsct****        scpt?X 0 replacestring replaceString?W 0 emsg eMsg?V  ??٠?,? ?Y hO)??l+ E?O?j l ?Y hO??k/E?O??l/E?O??	 ???&	 ???& ?Y hOfE?OfE?O?j m [??m/E?O*????a  k  @a g 6*?a ??a  j eE?Y hO*?a ??a  j eE?Y hVY hY hO?a a a a a a a a a a a a a a a a a a a a a a a  a a !a a a a "a a a #a a $a a a a %a a a &a a 'a a a (vE?Oa ) *a *k/a +,a ,[a -,\Ze81E?UO?a .  ?fE?O 1?[a /?l kh 
??a ,  eE?O?a ,E?OY h[OY??O? Ja ) *a 0-a +,E?UO 1?[a /?l kh 
??a , eE?O?a ,E?OY h[OY??Y hO? )?a 1l+ 2Y hY hOa 3E?OfE?O 1?[a /?l kh 
??a ,  eE?O?a ,E?OY h[OY??O? )?a 4?%a 5%l+ 2Y hO?	 ???& )?a 6?%a 7%l+ 2Y hO*a 8?/a 9,E?O*a 8?a :0a ;,e  ?a 3E?Oa 3E^ O?a < 
 	?a = ?& a >?%a ?%?a ,%j @?&E?Y hO?a A 
 	?a B ?& a C?%a D%?a ,%j @?&E^ Y hOa EE^ O?a F  Ha G))] a Ha Im+ Ja Ka Lm+ J%a M%))?a Na Om+ Ja Pa Qm+ J%a R%?&E^ Y )?a S  ] ?&E^ Y ?a T  ??&E^ Y hO] Y )?a U?%a V%l+ 2OPW X W X)?a Y] %a Z%l+ 2ascr  ??ޭ