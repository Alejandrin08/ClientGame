Ü5
KC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Logic\Email.cs
	namespace

 	!
ChineseCheckersClient


 
.

  
Logic

  %
{

& '
internal 
class 
Email 
{ 
public 
void 
	SendEmail 
( 
string $
subject% ,
,, -
string. 4
text5 9
,9 :
string; A
addressB I
)I J
{K L
try 
{ 

SmtpClient 
smtp 
=  !
new" %

SmtpClient& 0
(0 1
)1 2
;2 3
smtp 
. 
Host 
= 
$str ,
;, -
smtp 
. 
Port 
= 
$num 
;  
smtp 
. 
	EnableSsl 
=  
true! %
;% &
smtp 
. !
UseDefaultCredentials *
=+ ,
false- 2
;2 3
smtp 
. 
Credentials  
=! "
new# &
NetworkCredential' 8
(8 9
$str9 V
,V W
$strX m
)m n
;n o
MailMessage 
mm 
=  
new! $
MailMessage% 0
(0 1
)1 2
;2 3
mm 
. 

IsBodyHtml 
= 
true  $
;$ %
mm 
. 
Priority 
= 
MailPriority *
.* +
Normal+ 1
;1 2
mm 
. 
From 
= 
new 
MailAddress )
() *
$str* G
)G H
;H I
mm 
. 
Subject 
= 
subject $
;$ %
mm 
. 
Body 
= 
text 
; 
mm 
. 
To 
. 
Add 
( 
new 
MailAddress )
() *
address* 1
)1 2
)2 3
;3 4
smtp 
. 
Send 
( 
mm 
) 
; 
} 
catch 
( 
SmtpException !
)" #
{$ %

MessageBox 
. 
Show 
(  

Properties  *
.* +
	Resources+ 4
.4 5
ErrorCorreo5 @
)@ A
;A B
} 
}   	
public"" 
string"" 
Format"" 
("" 
String"" #
token""$ )
)"") *
{""+ ,
String## 
content## 
=## 
$str## '
+$$ 
$str$$ 
+%% 
$str%% 0
+&& 
$str&& 
+'' 
$str'' 
+(( 
$str(( =
+)) 
$str)) ~
+** 
$str**  
+++ 
$str++ $
+++% &

Properties++' 1
.++1 2
	Resources++2 ;
.++; <
CambiarContrase√±a++< M
+++N O
$str++P Y
+,, 
$str,, #
+,,$ %

Properties,,& 0
.,,0 1
	Resources,,1 :
.,,: ;
Token,,; @
+,,A B
$str,,C K
+-- 
$str-- #
+--$ %
token--& +
+--, -
$str--. 6
+.. 
$str.. =
+// 
$str// s
+00 
$str00  
+11 
$str11 #
+11$ %

Properties11& 0
.110 1
	Resources111 :
.11: ;
CorreoInformativo11; L
+11M N
$str11O W
+22 
$str22 
+33 
$str33 
;33 
return44 
content44 
;44 
}55 	
public77 
string77 
FormatSendRequest77 '
(77' (
String77( .
gamertag77/ 7
)777 8
{779 :
String88 
content88 
=88 
$str88 '
+99 
$str99 
+:: 
$str:: 0
+;; 
$str;; 
+<< 
$str<< 
+== 
$str== =
+>> 
$str>> ~
+?? 
$str??  
+@@ 
$str@@ $
+@@% &

Properties@@' 1
.@@1 2
	Resources@@2 ;
.@@; <
SolicitudAmistad@@< L
+@@M N
$str@@O X
+AA 
$strAA #
+AA$ %
gamertagAA& .
+AA/ 0
$strAA1 4
+AA5 6

PropertiesAA6 @
.AA@ A
	ResourcesAAA J
.AAJ K
SolicitudDeAAK V
+AAW X
$strAAY a
+BB 
$strBB =
+CC 
$strCC s
+DD 
$strDD  
+EE 
$strEE #
+EE$ %

PropertiesEE& 0
.EE0 1
	ResourcesEE1 :
.EE: ;
CorreoInformativoEE; L
+EEM N
$strEEO W
+FF 
$strFF 
+GG 
$strGG 
;GG 
returnHH 
contentHH 
;HH 
}II 	
publicKK 
stringKK 
GenerateTokenKK #
(KK# $
)KK$ %
{KK& '
constLL 
stringLL 

CHARACTERSLL #
=LL$ %
$strLL& 2
;LL2 3
StringBuilderMM 
tokenMM 
=MM  !
newMM" %
StringBuilderMM& 3
(MM3 4
)MM4 5
;MM5 6
RandomNN 
randomNN 
=NN 
newNN 
RandomNN  &
(NN& '
)NN' (
;NN( )
forPP 
(PP 
intPP 
iPP 
=PP 
$numPP 
;PP 
iPP 
<PP 
$numPP  !
;PP! "
iPP# $
++PP$ &
)PP& '
{PP( )
intQQ 
indexQQ 
=QQ 
randomQQ "
.QQ" #
NextQQ# '
(QQ' (
$numQQ( )
,QQ) *

CHARACTERSQQ+ 5
.QQ5 6
LengthQQ6 <
)QQ< =
;QQ= >
tokenRR 
.RR 
AppendRR 
(RR 

CHARACTERSRR '
[RR' (
indexRR( -
]RR- .
)RR. /
;RR/ 0
}SS 
returnTT 
tokenTT 
.TT 
ToStringTT !
(TT! "
)TT" #
;TT# $
}UU 	
}VV 
}WW ﬂ
PC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Logic\InfoFriend.cs
	namespace 	!
ChineseCheckersClient
 
.  
Logic  %
{& '
public 

class 

InfoFriend 
{ 
public		 
string		 
ImageProfile		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public

 
bool

 
IsOnline

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
} 
} Ω
QC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Logic\MusicPlayer.cs
	namespace 	!
ChineseCheckersClient
 
.  
Logic  %
{& '
public		 

class		 
MusicPlayer		 
{		 
private 
readonly 
MediaPlayer $
_mediaPlayer% 1
;1 2
public 
MusicPlayer 
( 
string !
musicFilePath" /
)/ 0
{1 2
_mediaPlayer 
= 
new 
MediaPlayer *
(* +
)+ ,
;, -
_mediaPlayer 
. 
Open 
( 
new !
Uri" %
(% &
musicFilePath& 3
,3 4
UriKind5 <
.< =
RelativeOrAbsolute= O
)O P
)P Q
;Q R
_mediaPlayer 
. 

MediaEnded #
+=$ &
(' (
s( )
,) *
args+ /
)/ 0
=>1 3
_mediaPlayer4 @
.@ A
PositionA I
=J K
TimeSpanL T
.T U
ZeroU Y
;Y Z
} 	
public 
void 
Play 
( 
) 
{ 
_mediaPlayer 
. 
Play 
( 
) 
;  
} 	
public 
void 
Stop 
( 
) 
{ 
_mediaPlayer 
. 
Stop 
( 
) 
;  
} 	
} 
} ö
RC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Logic\Enumerations.cs
	namespace 	!
ChineseCheckersClient
 
.  
Logic  %
{& '
public 

enum  
StatusOfNotification $
{% &
Pending		 
,		 
Accepted

 
} 
public 

enum 
Notification 
{ 
FriendRequest 
, 
GameRequest 
, 
} 
} ≠
TC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Logic\ChangeLanguaje.cs
	namespace 	!
ChineseCheckersClient
 
.  
Logic  %
{& '
public 

static 
class 
ChangeLanguaje '
{( )
public		 
static		 
event		 
EventHandler		 (
LanguajeChanged		) 8
;		8 9
public 
static 
void 
OnLanguajeChanged ,
(, -
)- .
{/ 0
LanguajeChanged 
? 
. 
Invoke #
(# $
null$ (
,( )
	EventArgs* 3
.3 4
Empty4 9
)9 :
;: ;
} 	
} 
} ã
TC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Logic\SingletonClass.cs
	namespace 	!
ChineseCheckersClient
 
.  
Logic  %
{& '
public 

class 
SingletonClass 
{  !
private

 
static

 
SingletonClass

 %
	_instance

& /
;

/ 0
public 
static 
SingletonClass $
Instance% -
{. /
get 
{ 
if 
( 
	_instance 
==  
null! %
)% &
{' (
	_instance 
= 
new  #
SingletonClass$ 2
(2 3
)3 4
;4 5
} 
return 
	_instance  
;  !
} 
} 	
public 
int 
IdUser 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
IdFriend 
{ 
get !
;! "
set# &
;& '
}( )
public 
string "
GamertagPlayerSelected ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
string 
GamertagUser "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
	EmailUser 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Token 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
ImageProfileUser #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
GamertagFriend $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
IdRoom 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ú<
VC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\UserControls\Chat.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
UserControls  ,
{- .
public 

partial 
class 
Chat 
: 
UserControl  +
,+ ,
ServiceReference- =
.= >
IMessageCallback> N
{O P
public 
Chat 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
ServiceReference 
. 
IMessage %
client& ,
=- .
new/ 2
ServiceReference3 C
.C D
MessageClientD Q
(Q R
newR U
InstanceContextV e
(e f
thisf j
)j k
)k l
;l m
client 
. 
	AddPlayer 
( 
SingletonClass +
.+ ,
Instance, 4
.4 5
GamertagUser5 A
,A B
SingletonClassC Q
.Q R
InstanceR Z
.Z [
IdRoom[ a
)a b
;b c
} 	
private 
void 
SendMessage  
(  !
object! '
sender( .
,. / 
MouseButtonEventArgs0 D
eE F
)F G
{H I
ProcessSendMessage   
(   
)    
;    !
}!! 	
private## 
void## 
ProcessSendMessage## '
(##' (
)##( )
{##* +
string$$ 
message$$ 
=$$ 

txtMessage$$ '
.$$' (
Text$$( ,
;$$, -
if%% 
(%% 
message%% 
!=%% 

Properties%% %
.%%% &
	Resources%%& /
.%%/ 0
EscribeMensaje%%0 >
&&%%? A
!%%B C
string%%C I
.%%I J
IsNullOrWhiteSpace%%J \
(%%\ ]
message%%] d
)%%d e
)%%e f
{%%g h
ServiceReference&&  
.&&  !
IMessage&&! )
client&&* 0
=&&1 2
new&&3 6
ServiceReference&&7 G
.&&G H
MessageClient&&H U
(&&U V
new&&V Y
InstanceContext&&Z i
(&&i j
this&&j n
)&&n o
)&&o p
;&&p q
client'' 
.'' 
SendMessage'' "
(''" #
message''# *
,''* +
SingletonClass'', :
.'': ;
Instance''; C
.''C D
GamertagUser''D P
,''P Q
SingletonClass''R `
.''` a
Instance''a i
.''i j
IdRoom''j p
)''p q
;''q r

txtMessage(( 
.(( 
Clear((  
(((  !
)((! "
;((" #
})) 
}** 	
public,, 
void,, 
SendMessageCallback,, '
(,,' (
string,,( .
message,,/ 6
,,,6 7
string,,8 >
gamertag,,? G
),,G H
{,,I J
MessageChat-- 
messageChat-- #
=--$ %
new--& )
MessageChat--* 5
(--5 6
)--6 7
;--7 8
messageChat.. 
... 
Gamertag..  
=..! "
gamertag..# +
;..+ ,
messageChat// 
.// 
Message// 
=//  !
message//" )
;//) *
messageChat00 
.00 
PathFile00  
=00! "
GetImageProfile00# 2
(002 3
gamertag003 ;
)00; <
;00< =
if11 
(11 
gamertag11 
==11 
SingletonClass11 *
.11* +
Instance11+ 3
.113 4
GamertagUser114 @
)11@ A
{11B C
messageChat22 
.22 
User22  
=22! "
true22# '
;22' (
messageChat33 
.33 
	ImageUser33 %
=33& '
true33( ,
;33, -
messageChat44 
.44 
HorizontalAlignment44 /
=440 1
HorizontalAlignment442 E
.44E F
Right44F K
;44K L
}55 
else55 
{55 
messageChat66 
.66 
User66  
=66! "
false66# (
;66( )
messageChat77 
.77 
ImageFriend77 '
=77( )
true77* .
;77. /
messageChat88 
.88 
HorizontalAlignment88 /
=880 1
HorizontalAlignment882 E
.88E F
Left88F J
;88J K
}99 
stackPanelChat:: 
.:: 
Children:: #
.::# $
Add::$ '
(::' (
messageChat::( 3
)::3 4
;::4 5
scrollViewerChat;; 
.;; 
ScrollToBottom;; +
(;;+ ,
);;, -
;;;- .
}<< 	
public>> 
string>> 
GetImageProfile>> %
(>>% &
string>>& ,
gamertag>>- 5
)>>5 6
{>>7 8
ServiceReference?? 
.?? 
IUser?? "
client??# )
=??* +
new??, /
ServiceReference??0 @
.??@ A

UserClient??A K
(??K L
)??L M
;??M N
	UserModel@@ 
	userModel@@ 
=@@  !
client@@" (
.@@( )
InfoUser@@) 1
(@@1 2
gamertag@@2 :
)@@: ;
;@@; <
stringAA 
ImageProfileAA 
=AA  !
$strAA" 6
+AA7 8
	userModelAA9 B
.AAB C
ImageProfileAAC O
;AAO P
returnBB 
ImageProfileBB 
;BB  
}CC 	
privateEE 
voidEE 
TxtMessageGotFocusEE '
(EE' (
objectEE( .
senderEE/ 5
,EE5 6
RoutedEventArgsEE7 F
eEEG H
)EEH I
{EEJ K
ifFF 
(FF 

txtMessageFF 
.FF 
TextFF 
==FF  "

PropertiesFF# -
.FF- .
	ResourcesFF. 7
.FF7 8
EscribeMensajeFF8 F
)FFF G
{FFH I

txtMessageGG 
.GG 
TextGG 
=GG  !
stringGG" (
.GG( )
EmptyGG) .
;GG. /
}HH 
}II 	
privateKK 
voidKK 
TxtMessageLostFocusKK (
(KK( )
objectKK) /
senderKK0 6
,KK6 7
RoutedEventArgsKK8 G
eKKH I
)KKI J
{KKK L
ifLL 
(LL 
stringLL 
.LL 
IsNullOrWhiteSpaceLL )
(LL) *

txtMessageLL* 4
.LL4 5
TextLL5 9
)LL9 :
)LL: ;
{LL< =

txtMessageMM 
.MM 
TextMM 
=MM  !

PropertiesMM" ,
.MM, -
	ResourcesMM- 6
.MM6 7
EscribeMensajeMM7 E
;MME F
}NN 
}OO 	
privateQQ 
voidQQ 
SendMessageTextBoxQQ '
(QQ' (
objectQQ( .
senderQQ/ 5
,QQ5 6
KeyEventArgsQQ7 C
eQQD E
)QQE F
{QQG H
ifRR 
(RR 
eRR 
.RR 
KeyRR 
==RR 
KeyRR 
.RR 
EnterRR "
)RR" #
{RR$ %
ProcessSendMessageSS "
(SS" #
)SS# $
;SS$ %
}TT 
}UU 	
}VV 
}WW Ê)
]C:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\UserControls\MessageChat.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
UserControls  ,
{- .
public 

partial 
class 
MessageChat $
:% &
UserControl' 2
,2 3"
INotifyPropertyChanged4 J
{K L
public 
MessageChat 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
this 
. 
DataContext 
= 
this #
;# $
} 	
private 
string 
	_gamertag  
;  !
private 
string 
	_pathFile  
;  !
private 
bool 

_imageUser 
;  
private 
bool 
_imageFriend !
;! "
private 
bool 
_user 
; 
private 
string 
_message 
;  
public   
string   
Gamertag   
{    
get!! 
{!! 
return!! 
	_gamertag!! "
;!!" #
}!!$ %
set"" 
{"" 
if## 
(## 
	_gamertag## 
!=##  
value##! &
)##& '
{##( )
	_gamertag$$ 
=$$ 
value$$  %
;$$% &
OnPropertyChanged%% %
(%%% &
nameof%%& ,
(%%, -
Gamertag%%- 5
)%%5 6
)%%6 7
;%%7 8
}&& 
}'' 
}(( 	
public)) 
string)) 
Message)) 
{)) 
get** 
{** 
return** 
_message** !
;**! "
}**# $
set++ 
{++ 
if,, 
(,, 
_message,, 
!=,, 
value,,  %
),,% &
{,,' (
_message-- 
=-- 
value-- $
;--$ %
OnPropertyChanged.. %
(..% &
nameof..& ,
(.., -
Message..- 4
)..4 5
)..5 6
;..6 7
}// 
}00 
}11 	
public22 
string22 
PathFile22 
{22  
get33 
{33 
return33 
	_pathFile33 "
;33" #
}33$ %
set44 
{44 
if55 
(55 
	_pathFile55 
!=55  
value55! &
)55& '
{55( )
	_pathFile66 
=66 
value66  %
;66% &
OnPropertyChanged77 %
(77% &
nameof77& ,
(77, -
PathFile77- 5
)775 6
)776 7
;777 8
}88 
}99 
}:: 	
public;; 
bool;; 
	ImageUser;; 
{;; 
get<< 
{<< 
return<< 

_imageUser<< #
;<<# $
}<<% &
set== 
{== 
if>> 
(>> 

_imageUser>> 
!=>> !
value>>" '
)>>' (
{>>) *

_imageUser?? 
=??  
value??! &
;??& '
OnPropertyChanged@@ %
(@@% &
nameof@@& ,
(@@, -
	ImageUser@@- 6
)@@6 7
)@@7 8
;@@8 9
}AA 
}BB 
}CC 	
publicDD 
boolDD 
ImageFriendDD 
{DD  !
getEE 
{EE 
returnEE 
_imageFriendEE %
;EE% &
}EE' (
setFF 
{FF 
ifGG 
(GG 
_imageFriendGG  
!=GG! #
valueGG$ )
)GG) *
{GG+ ,
_imageFriendHH  
=HH! "
valueHH# (
;HH( )
OnPropertyChangedII %
(II% &
nameofII& ,
(II, -
ImageFriendII- 8
)II8 9
)II9 :
;II: ;
}JJ 
}KK 
}LL 	
publicMM 
boolMM 
UserMM 
{MM 
getNN 
{NN 
returnNN 
_userNN 
;NN 
}NN  !
setOO 
{OO 
ifPP 
(PP 
_userPP 
!=PP 
valuePP "
)PP" #
{PP$ %
_userQQ 
=QQ 
valueQQ !
;QQ! "
OnPropertyChangedRR %
(RR% &
nameofRR& ,
(RR, -
UserRR- 1
)RR1 2
)RR2 3
;RR3 4
}SS 
}TT 
}UU 	
publicVV 
eventVV '
PropertyChangedEventHandlerVV 0
PropertyChangedVV1 @
;VV@ A
	protectedWW 
virtualWW 
voidWW 
OnPropertyChangedWW 0
(WW0 1
stringWW1 7
propertyNameWW8 D
)WWD E
{WWF G
PropertyChangedXX 
?XX 
.XX 
InvokeXX #
(XX# $
thisXX$ (
,XX( )
newXX* -$
PropertyChangedEventArgsXX. F
(XXF G
propertyNameXXG S
)XXS T
)XXT U
;XXU V
}YY 	
}ZZ 
}[[ ≠
hC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Validations\EmailDuplicityValidationRule.cs
	namespace 	!
ChineseCheckersClient
 
.  
Validations  +
{, -
public 

class (
EmailDuplicityValidationRule -
:. /
ValidationRule0 >
{? @
public 
override 
ValidationResult (
Validate) 1
(1 2
object2 8
value9 >
,> ?
CultureInfo@ K
cultureInfoL W
)W X
{Y Z
	UserModel 
	userModel 
=  !
new" %
	UserModel& /
{0 1
Email 
= 
value 
. 
ToString &
(& '
)' (
,( )
} 
; 
try 
{ 
ServiceReference  
.  !
IUser! &
client' -
=. /
new0 3
ServiceReference4 D
.D E

UserClientE O
(O P
)P Q
;Q R
int 
resultValidateEmail '
=( )
client* 0
.0 1
ValidateEmail1 >
(> ?
	userModel? H
)H I
;I J
if 
( 
resultValidateEmail '
==( *
$num+ ,
), -
{. /
return 
new 
ValidationResult /
(/ 0
false0 5
,5 6

Properties7 A
.A B
	ResourcesB K
.K L
EmailDuplicadoL Z
)Z [
;[ \
} 
else 
{ 
return 
ValidationResult +
.+ ,
ValidResult, 7
;7 8
} 
} 
catch 
( "
CommunicationException +
ex, .
). /
{0 1

MessageBox 
. 
Show 
(  
ex  "
." #
Message# *
)* +
;+ ,
return 
new 
ValidationResult +
(+ ,
false, 1
,1 2

Properties3 =
.= >
	Resources> G
.G H
ErrorConexionH U
)U V
;V W
} 
}   	
}!! 
}"" Ä
cC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Validations\EmailEditValidationRule.cs
	namespace 	!
ChineseCheckersClient
 
.  
Validations  +
{, -
public 

class #
EmailEditValidationRule (
:) *
ValidationRule+ 9
{: ;
public 
override 
ValidationResult (
Validate) 1
(1 2
object2 8
value9 >
,> ?
CultureInfo@ K
cultureInfoL W
)W X
{Y Z
	UserModel 
	userModel 
=  !
new" %
	UserModel& /
{0 1
Email 
= 
value 
. 
ToString &
(& '
)' (
,( )
} 
; 
try 
{ 
ServiceReference  
.  !
IUser! &
client' -
=. /
new0 3
ServiceReference4 D
.D E

UserClientE O
(O P
)P Q
;Q R
int 
resultValidateEmail '
=( )
client* 0
.0 1
ValidateEmail1 >
(> ?
	userModel? H
)H I
;I J
if 
( 
value 
. 
ToString "
(" #
)# $
!=% '
SingletonClass( 6
.6 7
Instance7 ?
.? @
	EmailUser@ I
&&J L
resultValidateEmailM `
==a c
$numd e
)e f
{g h
return 
new 
ValidationResult /
(/ 0
false0 5
,5 6

Properties7 A
.A B
	ResourcesB K
.K L
EmailDuplicadoL Z
)Z [
;[ \
} 
else 
{ 
return 
ValidationResult +
.+ ,
ValidResult, 7
;7 8
} 
} 
catch 
( "
CommunicationException +
ex, .
). /
{0 1

MessageBox 
. 
Show 
(  
ex  "
." #
Message# *
)* +
;+ ,
return 
new 
ValidationResult +
(+ ,
false, 1
,1 2

Properties3 =
.= >
	Resources> G
.G H
ErrorConexionH U
)U V
;V W
} 
} 	
}   
}!! ¶
_C:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Validations\EmailValidationRule.cs
	namespace 	!
ChineseCheckersClient
 
.  
Validations  +
{, -
public 

class 
EmailValidationRule $
:% &
ValidationRule' 5
{6 7
public 
override 
ValidationResult (
Validate) 1
(1 2
object2 8
value9 >
,> ?
CultureInfo@ K
cultureInfoL W
)W X
{Y Z
Regex 
regex 
= 
new 
Regex #
(# $
$str	$ â
)
â ä
;
ä ã
if 
( 
! 
regex 
. 
IsMatch 
( 
value $
.$ %
ToString% -
(- .
). /
)/ 0
)0 1
{2 3
return 
new 
ValidationResult +
(+ ,
false, 1
,1 2

Properties3 =
.= >
	Resources> G
.G H
EmailInvalidoH U
)U V
;V W
} 
else 
{ 
return 
ValidationResult '
.' (
ValidResult( 3
;3 4
} 
} 	
} 
} ﬁ
pC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Validations\FriendRequestDuplicityValidationRule.cs
	namespace 	!
ChineseCheckersClient
 
.  
Validations  +
{, -
public 

class 0
$FriendRequestDuplicityValidationRule 5
:6 7
ValidationRule8 F
{G H
public 
override 
ValidationResult (
Validate) 1
(1 2
object2 8
value9 >
,> ?
CultureInfo@ K
cultureInfoL W
)W X
{Y Z
try 
{ 
ServiceReference  
.  !
IFriendship! ,
clientFriendship- =
=> ?
new@ C
ServiceReferenceD T
.T U
FriendshipClientU e
(e f
)f g
;g h
int '
resultValidateRequestFriend /
=0 1
clientFriendship2 B
.B C!
ValidateFriendRequestC X
(X Y
SingletonClassY g
.g h
Instanceh p
.p q
IdUserq w
,w x
SingletonClass	y á
.
á à
Instance
à ê
.
ê ë
IdFriend
ë ô
,
ô ö"
StatusOfNotification
õ Ø
.
Ø ∞
Pending
∞ ∑
.
∑ ∏
ToString
∏ ¿
(
¿ ¡
)
¡ ¬
)
¬ √
;
√ ƒ
if 
( '
resultValidateRequestFriend /
==0 2
$num3 4
)4 5
{6 7
return 
new 
ValidationResult /
(/ 0
false0 5
,5 6

Properties7 A
.A B
	ResourcesB K
.K L%
SolicitudAmistadDuplicadoL e
)e f
;f g
} 
else 
{ 
return 
ValidationResult +
.+ ,
ValidResult, 7
;7 8
} 
} 
catch 
( "
CommunicationException +
ex, .
). /
{0 1

MessageBox 
. 
Show 
(  
ex  "
." #
Message# *
)* +
;+ ,
return 
new 
ValidationResult +
(+ ,
false, 1
,1 2

Properties3 =
.= >
	Resources> G
.G H
ErrorConexionH U
)U V
;V W
} 
} 	
} 
} º
kC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Validations\GamertagDuplicityValidationRule.cs
	namespace 	!
ChineseCheckersClient
 
.  
Validations  +
{, -
public 

class +
GamertagDuplicityValidationRule 0
:1 2
ValidationRule3 A
{B C
public 
override 
ValidationResult (
Validate) 1
(1 2
object2 8
value9 >
,> ?
CultureInfo@ K
cultureInfoL W
)W X
{Y Z
	UserModel 
	userModel 
=  !
new" %
	UserModel& /
{0 1
Gamertag 
= 
value  
.  !
ToString! )
() *
)* +
,+ ,
} 
; 
try 
{ 
ServiceReference  
.  !
IUser! &
client' -
=. /
new0 3
ServiceReference4 D
.D E

UserClientE O
(O P
)P Q
;Q R
int 
resultValidateEmail '
=( )
client* 0
.0 1
ValidateGamertag1 A
(A B
	userModelB K
)K L
;L M
if 
( 
resultValidateEmail '
==( *
$num+ ,
), -
{. /
return 
new 
ValidationResult /
(/ 0
false0 5
,5 6

Properties7 A
.A B
	ResourcesB K
.K L
GamertagDuplicadoL ]
)] ^
;^ _
} 
else 
{ 
return 
ValidationResult +
.+ ,
ValidResult, 7
;7 8
} 
} 
catch 
( "
CommunicationException +
ex, .
). /
{0 1

MessageBox 
. 
Show 
(  
ex  "
." #
Message# *
)* +
;+ ,
return 
new 
ValidationResult +
(+ ,
false, 1
,1 2

Properties3 =
.= >
	Resources> G
.G H
ErrorConexionH U
)U V
;V W
} 
} 	
}   
}!! í
fC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Validations\GamertagEditValidationRule.cs
	namespace 	!
ChineseCheckersClient
 
.  
Validations  +
{, -
public 

class &
GamertagEditValidationRule +
:, -
ValidationRule. <
{= >
public 
override 
ValidationResult (
Validate) 1
(1 2
object2 8
value9 >
,> ?
CultureInfo@ K
cultureInfoL W
)W X
{Y Z
	UserModel 
	userModel 
=  !
new" %
	UserModel& /
{0 1
Gamertag 
= 
value  
.  !
ToString! )
() *
)* +
,+ ,
} 
; 
try 
{ 
ServiceReference  
.  !
IUser! &
client' -
=. /
new0 3
ServiceReference4 D
.D E

UserClientE O
(O P
)P Q
;Q R
int 
resultValidateEmail '
=( )
client* 0
.0 1
ValidateGamertag1 A
(A B
	userModelB K
)K L
;L M
if 
( 
value 
. 
ToString "
(" #
)# $
!=% '
SingletonClass( 6
.6 7
Instance7 ?
.? @
GamertagUser@ L
&&M O
resultValidateEmailP c
==d f
$numg h
)h i
{j k
return 
new 
ValidationResult /
(/ 0
false0 5
,5 6

Properties7 A
.A B
	ResourcesB K
.K L
GamertagDuplicadoL ]
)] ^
;^ _
} 
else 
{ 
return 
ValidationResult +
.+ ,
ValidResult, 7
;7 8
} 
} 
catch 
( "
CommunicationException +
ex, .
). /
{0 1

MessageBox 
. 
Show 
(  
ex  "
." #
Message# *
)* +
;+ ,
return 
new 
ValidationResult +
(+ ,
false, 1
,1 2

Properties3 =
.= >
	Resources> G
.G H
ErrorConexionH U
)U V
;V W
} 
} 	
}   
}!! Ç
bC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Validations\GamertagValidationRule.cs
	namespace

 	!
ChineseCheckersClient


 
.

  
Validations

  +
{

, -
public 

class "
GamertagValidationRule '
:( )
ValidationRule* 8
{9 :
public 
override 
ValidationResult (
Validate) 1
(1 2
object2 8
value9 >
,> ?
CultureInfo@ K
cultureInfoL W
)W X
{Y Z
Regex 
regex 
= 
new 
Regex #
(# $
$str$ 5
)5 6
;6 7
string 
input 
= 
value  
.  !
ToString! )
() *
)* +
;+ ,
if 
( 
! 
regex 
. 
IsMatch 
( 
input $
)$ %
)% &
{' (
return 
new 
ValidationResult +
(+ ,
false, 1
,1 2

Properties3 =
.= >
	Resources> G
.G H
GamertagInvalidoH X
)X Y
;Y Z
} 
else 
{ 
return 
ValidationResult '
.' (
ValidResult( 3
;3 4
} 
} 	
} 
} ≠
bC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Validations\PasswordValidationRule.cs
	namespace

 	!
ChineseCheckersClient


 
.

  
Validations

  +
{

, -
public 

class "
PasswordValidationRule '
:( )
ValidationRule* 8
{9 :
public 
override 
ValidationResult (
Validate) 1
(1 2
object2 8
value9 >
,> ?
CultureInfo@ K
cultureInfoL W
)W X
{Y Z
Regex 
regex 
= 
new 
Regex #
(# $
$str$ Y
)Y Z
;Z [
if 
( 
! 
regex 
. 
IsMatch 
( 
value $
.$ %
ToString% -
(- .
). /
)/ 0
)0 1
{2 3
return 
new 
ValidationResult +
(+ ,
false, 1
,1 2

Properties3 =
.= >
	Resources> G
.G H
Contrase√±aInvalidaH Z
)Z [
;[ \
} 
else 
{ 
return 
ValidationResult '
.' (
ValidResult( 3
;3 4
} 
} 	
} 
} ”
_C:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Validations\TokenValidationRule.cs
	namespace

 	!
ChineseCheckersClient


 
.

  
Validations

  +
{

, -
public 

class 
TokenValidationRule $
:% &
ValidationRule' 5
{6 7
public 
override 
ValidationResult (
Validate) 1
(1 2
object2 8
value9 >
,> ?
CultureInfo@ K
cultureInfoL W
)W X
{Y Z
Regex 
regex 
= 
new 
Regex #
(# $
$str$ .
). /
;/ 0
if 
( 
! 
regex 
. 
IsMatch 
( 
value $
.$ %
ToString% -
(- .
). /
)/ 0
)0 1
{2 3
return 
new 
ValidationResult +
(+ ,
false, 1
,1 2!
ChineseCheckersClient3 H
.H I

PropertiesI S
.S T
	ResourcesT ]
.] ^
TokenInvalido^ k
)k l
;l m
} 
else 
{ 
return 
ValidationResult '
.' (
ValidResult( 3
;3 4
} 
} 	
} 
} ”
MC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\View\App.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
View  $
{% &
public 

partial 
class 
App 
: 
Application *
{+ ,
public 
static 
MusicPlayer !
MusicPlayer" -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
App 
( 
) 
{ 
Login 
login 
= 
new 
Login #
(# $
)$ %
;% &
login 
. 
Show 
( 
) 
; 
MusicPlayer 
= 
new 
MusicPlayer )
() *
$str* P
)P Q
;Q R
MusicPlayer 
. 
Play 
( 
) 
; 
} 	
	protected   
override   
void   
OnExit    &
(  & '
ExitEventArgs  ' 4
e  5 6
)  6 7
{  8 9
MusicPlayer!! 
.!! 
Stop!! 
(!! 
)!! 
;!! 
base"" 
."" 
OnExit"" 
("" 
e"" 
)"" 
;"" 
}## 	
public%% 
static%% 
BitmapImage%% !
DisplayImageProfile%%" 5
(%%5 6
)%%6 7
{%%8 9
try&& 
{&& 
ServiceReference''  
.''  !
IUser''! &
client''' -
=''. /
new''0 3
ServiceReference''4 D
.''D E

UserClient''E O
(''O P
)''P Q
;''Q R
string(( 
path(( 
=(( 
client(( $
.(($ %
GetPlayerImage((% 3
(((3 4
SingletonClass((4 B
.((B C
Instance((C K
.((K L
GamertagUser((L X
)((X Y
;((Y Z
BitmapImage)) 
bitmap)) "
=))# $
new))% (
BitmapImage))) 4
())4 5
)))5 6
;))6 7
bitmap** 
.** 
	BeginInit**  
(**  !
)**! "
;**" #
bitmap++ 
.++ 
	UriSource++  
=++! "
new++# &
Uri++' *
(++* +
@path+++ 0
,++0 1
UriKind++2 9
.++9 :
RelativeOrAbsolute++: L
)++L M
;++M N
bitmap,, 
.,, 
EndInit,, 
(,, 
),,  
;,,  !
return-- 
bitmap-- 
;-- 
}.. 
catch.. 
(.. "
CommunicationException.. +
ex.., .
)... /
{..0 1

MessageBox// 
.// 
Show// 
(//  
$"//  "
$str//" 9
{//9 :
ex//: <
.//< =
Message//= D
}//D E
"//E F
)//F G
;//G H
return00 
null00 
;00 
}11 
}22 	
}33 
}44 á
OC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\View\Board.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
View  $
{% &
public 

partial 
class 
Board 
:  
Window! '
{( )
public 
Board 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ¥f
XC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\View\ChangePassword.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
View  $
{% &
public 

partial 
class 
ChangePassword '
:( )
Window* 0
{1 2
public 
ChangePassword 
( 
) 
{  !
InitializeComponent 
(  
)  !
;! "
	UserModel 
	userModel 
=  !
new" %
	UserModel& /
(/ 0
)0 1
;1 2
this 
. 
DataContext 
= 
	userModel (
;( )
} 	
private 
void 

BackWindow 
(  
object  &
sender' -
,- .
RoutedEventArgs/ >
e? @
)@ A
{B C
Login   
login   
=   
new   
Login   #
(  # $
)  $ %
;  % &
login!! 
.!! 
Show!! 
(!! 
)!! 
;!! 
this"" 
."" 
Close"" 
("" 
)"" 
;"" 
}## 	
private%% 
void%% 
BackWindowUserMenu%% '
(%%' (
object%%( .
sender%%/ 5
,%%5 6
RoutedEventArgs%%7 F
e%%G H
)%%H I
{%%J K
EditProfile&& 
editProfile&& #
=&&$ %
new&&& )
EditProfile&&* 5
(&&5 6
)&&6 7
;&&7 8
editProfile'' 
.'' 
Show'' 
('' 
)'' 
;'' 
this(( 
.(( 
Close(( 
((( 
)(( 
;(( 
})) 	
private++ 
void++  
ValidateTextBoxEmail++ )
(++) *
object++* 0
sender++1 7
,++7 8 
TextChangedEventArgs++9 M
e++N O
)++O P
{++Q R
bool,, 
isTextBoxValid,, 
=,,  !
!,," #

Validation,,# -
.,,- .
GetHasError,,. 9
(,,9 :
textBoxEmail,,: F
),,F G
&&,,H J
!,,K L
string,,L R
.,,R S
IsNullOrEmpty,,S `
(,,` a
textBoxEmail,,a m
.,,m n
Text,,n r
),,r s
;,,s t
if-- 
(-- 
isTextBoxValid-- 
)-- 
{--  !
buttonAcceptEmail.. !
...! "
	IsEnabled.." +
=.., -
true... 2
;..2 3
}// 
else// 
{// 
buttonAcceptEmail00 !
.00! "
	IsEnabled00" +
=00, -
false00. 3
;003 4
}11 
}22 	
private44 
void44  
ValidateTextBoxToken44 )
(44) *
object44* 0
sender441 7
,447 8 
TextChangedEventArgs449 M
e44N O
)44O P
{44Q R
bool55 
isTextBoxValid55 
=55  !
!55" #

Validation55# -
.55- .
GetHasError55. 9
(559 :
textBoxToken55: F
)55F G
&&55H J
!55K L
string55L R
.55R S
IsNullOrEmpty55S `
(55` a
textBoxToken55a m
.55m n
Text55n r
)55r s
;55s t
if66 
(66 
isTextBoxValid66 
)66 
{66  !
buttonValidate77 
.77 
	IsEnabled77 (
=77) *
true77+ /
;77/ 0
}88 
else88 
{88 
buttonValidate99 
.99 
	IsEnabled99 (
=99) *
false99+ 0
;990 1
}:: 
};; 	
private== 
void== #
ValidateTextBoxPassword== ,
(==, -
object==- 3
sender==4 :
,==: ; 
TextChangedEventArgs==< P
e==Q R
)==R S
{==T U
bool>> 
isPasswordValid>>  
=>>! "
!>># $

Validation>>$ .
.>>. /
GetHasError>>/ :
(>>: ;
textBoxPassword>>; J
)>>J K
&&>>L N
!>>O P
string>>P V
.>>V W
IsNullOrEmpty>>W d
(>>d e
textBoxPassword>>e t
.>>t u
Text>>u y
)>>y z
;>>z {
if?? 
(?? 
isPasswordValid?? 
)??  
{??! " 
buttonAcceptPassword@@ $
.@@$ %
	IsEnabled@@% .
=@@/ 0
true@@1 5
;@@5 6
}AA 
elseAA 
{AA  
buttonAcceptPasswordBB $
.BB$ %
	IsEnabledBB% .
=BB/ 0
falseBB1 6
;BB6 7
}CC 
}DD 	
privateFF 
voidFF 
AcceptEmailFF  
(FF  !
objectFF! '
senderFF( .
,FF. /
RoutedEventArgsFF0 ?
eFF@ A
)FFA B
{FFC D
ifGG 
(GG 

EmailExistGG 
(GG 
)GG 
)GG 
{GG 
textBoxEmailHH 
.HH 
	IsEnabledHH &
=HH' (
falseHH) .
;HH. /
buttonAcceptEmailII !
.II! "
	IsEnabledII" +
=II, -
falseII. 3
;II3 4
	SendTokenJJ 
(JJ 
)JJ 
;JJ 
textBlockTokenKK 
.KK 

VisibilityKK )
=KK* +

VisibilityKK, 6
.KK6 7
VisibleKK7 >
;KK> ?
textBoxTokenLL 
.LL 

VisibilityLL '
=LL( )

VisibilityLL* 4
.LL4 5
VisibleLL5 <
;LL< =
buttonValidateMM 
.MM 

VisibilityMM )
=MM* +

VisibilityMM, 6
.MM6 7
VisibleMM7 >
;MM> ?
}NN 
elseNN 
{NN 

MessageBoxOO 
.OO 
ShowOO 
(OO  

PropertiesOO  *
.OO* +
	ResourcesOO+ 4
.OO4 5
CorreoInexistenteOO5 F
)OOF G
;OOG H
}PP 
}RR 	
privateTT 
voidTT 
ValidateTokenTT "
(TT" #
objectTT# )
senderTT* 0
,TT0 1
RoutedEventArgsTT2 A
eTTB C
)TTC D
{TTE F
ifUU 
(UU 
textBoxTokenUU 
.UU 
TextUU !
==UU" $
SingletonClassUU% 3
.UU3 4
InstanceUU4 <
.UU< =
TokenUU= B
)UUB C
{UUD E
textBoxTokenVV 
.VV 
	IsEnabledVV &
=VV' (
falseVV) .
;VV. /
buttonValidateWW 
.WW 
	IsEnabledWW (
=WW) *
falseWW+ 0
;WW0 1
textBlockPasswordXX !
.XX! "

VisibilityXX" ,
=XX- .

VisibilityXX/ 9
.XX9 :
VisibleXX: A
;XXA B
textBoxPasswordYY 
.YY  

VisibilityYY  *
=YY+ ,

VisibilityYY- 7
.YY7 8
VisibleYY8 ?
;YY? @ 
buttonAcceptPasswordZZ $
.ZZ$ %

VisibilityZZ% /
=ZZ0 1

VisibilityZZ2 <
.ZZ< =
VisibleZZ= D
;ZZD E
}[[ 
else[[ 
{[[ 

MessageBox\\ 
.\\ 
Show\\ 
(\\  

Properties\\  *
.\\* +
	Resources\\+ 4
.\\4 5
TokenIncorrecto\\5 D
)\\D E
;\\E F
}]] 
}__ 	
privateaa 
boolaa 

EmailExistaa 
(aa  
)aa  !
{aa" #
boolbb 

emailExistbb 
=bb 
falsebb #
;bb# $
SingletonClasscc 
.cc 
Instancecc #
.cc# $
	EmailUsercc$ -
=cc. /
textBoxEmailcc0 <
.cc< =
Textcc= A
;ccA B
	UserModeldd 
	userModeldd 
=dd  !
newdd" %
	UserModeldd& /
{dd0 1
Emailee 
=ee 
textBoxEmailee $
.ee$ %
Textee% )
,ee) *
}ff 
;ff 
trygg 
{gg 
ServiceReferencehh  
.hh  !
IUserhh! &
clienthh' -
=hh. /
newhh0 3
ServiceReferencehh4 D
.hhD E

UserClienthhE O
(hhO P
)hhP Q
;hhQ R
ifii 
(ii 
clientii 
.ii 
ValidateEmailii (
(ii( )
	userModelii) 2
)ii2 3
==ii4 6
$numii7 8
)ii8 9
{ii: ;

emailExistjj 
=jj  
truejj! %
;jj% &
}kk 
returnll 

emailExistll !
;ll! "
}mm 
catchmm 
(mm "
CommunicationExceptionmm +
exmm, .
)mm. /
{mm0 1

MessageBoxnn 
.nn 
Shownn 
(nn  
exnn  "
.nn" #
Messagenn# *
)nn* +
;nn+ ,
returnoo 
falseoo 
;oo 
}pp 
}qq 	
privatess 
voidss 
	SendTokenss 
(ss 
)ss  
{ss! "
Emailtt 
emailtt 
=tt 
newtt 
Emailtt #
(tt# $
)tt$ %
;tt% &
stringuu 
tokenuu 
=uu 
emailuu  
.uu  !
GenerateTokenuu! .
(uu. /
)uu/ 0
;uu0 1
SingletonClassvv 
.vv 
Instancevv #
.vv# $
Tokenvv$ )
=vv* +
tokenvv, 1
;vv1 2
stringww 
addressww 
=ww 
textBoxEmailww )
.ww) *
Textww* .
;ww. /
stringxx 
textxx 
=xx 
emailxx 
.xx  
Formatxx  &
(xx& '
tokenxx' ,
)xx, -
;xx- .
emailyy 
.yy 
	SendEmailyy 
(yy 

Propertiesyy &
.yy& '
	Resourcesyy' 0
.yy0 1
	Recuperaryy1 :
,yy: ;
textyy< @
,yy@ A
addressyyB I
)yyI J
;yyJ K
}zz 	
private|| 
void|| 
UpdatePassword|| #
(||# $
object||$ *
sender||+ 1
,||1 2
RoutedEventArgs||3 B
e||C D
)||D E
{||F G
	UserModel}} 
	userModel}} 
=}}  !
new}}" %
	UserModel}}& /
{}}0 1
Email~~ 
=~~ 
SingletonClass~~ &
.~~& '
Instance~~' /
.~~/ 0
	EmailUser~~0 9
,~~9 :
Password 
= 
textBoxPassword *
.* +
Text+ /
,/ 0
}
ÄÄ 
;
ÄÄ 
try
ÅÅ 
{
ÅÅ 
ServiceReference
ÇÇ  
.
ÇÇ  !
IUser
ÇÇ! &
client
ÇÇ' -
=
ÇÇ. /
new
ÇÇ0 3
ServiceReference
ÇÇ4 D
.
ÇÇD E

UserClient
ÇÇE O
(
ÇÇO P
)
ÇÇP Q
;
ÇÇQ R
int
ÉÉ "
resultUpdatePassword
ÉÉ (
=
ÉÉ) *
client
ÉÉ+ 1
.
ÉÉ1 2
UpdatePassword
ÉÉ2 @
(
ÉÉ@ A
	userModel
ÉÉA J
)
ÉÉJ K
;
ÉÉK L
if
ÑÑ 
(
ÑÑ "
resultUpdatePassword
ÑÑ (
>
ÑÑ) *
$num
ÑÑ+ ,
)
ÑÑ, -
{
ÑÑ. /

MessageBox
ÖÖ 
.
ÖÖ 
Show
ÖÖ #
(
ÖÖ# $

Properties
ÖÖ$ .
.
ÖÖ. /
	Resources
ÖÖ/ 8
.
ÖÖ8 9
CambioExitoso
ÖÖ9 F
)
ÖÖF G
;
ÖÖG H
}
ÜÜ 
else
ÜÜ 
{
ÜÜ 

MessageBox
áá 
.
áá 
Show
áá #
(
áá# $

Properties
áá$ .
.
áá. /
	Resources
áá/ 8
.
áá8 9
CambioFallo
áá9 D
)
ááD E
;
ááE F
}
àà 
Login
ââ 
login
ââ 
=
ââ 
new
ââ !
Login
ââ" '
(
ââ' (
)
ââ( )
;
ââ) *
login
ää 
.
ää 
Show
ää 
(
ää 
)
ää 
;
ää 
this
ãã 
.
ãã 
Close
ãã 
(
ãã 
)
ãã 
;
ãã 
}
åå 
catch
åå 
(
åå $
CommunicationException
åå +
ex
åå, .
)
åå. /
{
åå0 1

MessageBox
çç 
.
çç 
Show
çç 
(
çç  
ex
çç  "
.
çç" #
Message
çç# *
)
çç* +
;
çç+ ,
}
éé 
}
èè 	
}
êê 
}ëë ˜à
UC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\View\EditProfile.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
View  $
{% &
public 

partial 
class 
EditProfile $
:% &
Window' -
{. /
private 
List 
< 
BitmapImage  
>  !

ImagesList" ,
;, -
public 
EditProfile 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
ChangeLanguaje 
. 
LanguajeChanged *
+=+ -'
LanguajeChangedEventHandler. I
;I J
ChangeImage   
(   
)   
;   
SetInfo!! 
(!! 
)!! 
;!! 
}"" 	
public$$ 
void$$ 
SetInfo$$ 
($$ 
)$$ 
{$$ 
string%% 
gamertag%% 
=%% 
SingletonClass%% ,
.%%, -
Instance%%- 5
.%%5 6
GamertagUser%%6 B
;%%B C
try&& 
{&& 
ServiceReference''  
.''  !
IUser''! &
client''' -
=''. /
new''0 3
ServiceReference''4 D
.''D E

UserClient''E O
(''O P
)''P Q
;''Q R
	UserModel(( 
	userModel(( #
=(($ %
client((& ,
.((, -
InfoUser((- 5
(((5 6
gamertag((6 >
)((> ?
;((? @
SingletonClass)) 
.)) 
Instance)) '
.))' (
	EmailUser))( 1
=))2 3
	userModel))4 =
.))= >
Email))> C
;))C D
int** 
value** 
=** 
GetIndexImage** )
(**) *
	userModel*** 3
.**3 4
ImageProfile**4 @
)**@ A
;**A B
SingletonClass++ 
.++ 
Instance++ '
.++' (
ImageProfileUser++( 8
=++9 :
value++; @
;++@ A
textBoxGamertag,, 
.,,  
Text,,  $
=,,% &
	userModel,,' 0
.,,0 1
Gamertag,,1 9
;,,9 :
textBoxEmail-- 
.-- 
Text-- !
=--" #
	userModel--$ -
.--- .
Email--. 3
;--3 4
sliderImage.. 
... 
Value.. !
=.." #
value..$ )
;..) *
this// 
.// 
DataContext//  
=//! "
	userModel//# ,
;//, -
ActivateButton00 
(00 
)00  
;00  !
}11 
catch11 
(11 "
CommunicationException11 +
ex11, .
)11. /
{110 1

MessageBox22 
.22 
Show22 
(22  
$"22  "
$str22" 9
{229 :
ex22: <
.22< =
Message22= D
}22D E
"22E F
)22F G
;22G H
}33 
}44 	
public66 
int66 
GetIndexImage66  
(66  !
string66! '
image66( -
)66- .
{66/ 0
int77 
index77 
=77 
-77 
$num77 
;77 
string88 
a88 
=88 
$str88 +
+88, -
image88. 3
;883 4
for99 
(99 
int99 
i99 
=99 
$num99 
;99 
i99 
<99 

ImagesList99  *
.99* +
Count99+ 0
;990 1
i992 3
++993 5
)995 6
{997 8
string:: 
	imagePath::  
=::! "

ImagesList::# -
[::- .
i::. /
]::/ 0
.::0 1
	UriSource::1 :
.::: ;
ToString::; C
(::C D
)::D E
;::E F
if;; 
(;; 
	imagePath;; 
==;;  
a;;! "
);;" #
{;;$ %
index<< 
=<< 
i<< 
;<< 
}== 
}>> 
return?? 
index?? 
;?? 
}@@ 	
privateBB 
voidBB 
ChangeImageBB  
(BB  !
)BB! "
{BB# $

ImagesListCC 
=CC 
newCC 
ListCC !
<CC! "
BitmapImageCC" -
>CC- .
(CC. /
)CC/ 0
;CC0 1

ImagesListDD 
.DD 
AddDD 
(DD 
newDD 
BitmapImageDD *
(DD* +
newDD+ .
UriDD/ 2
(DD2 3
$strDD3 U
,DDU V
UriKindDDW ^
.DD^ _
RelativeDD_ g
)DDg h
)DDh i
)DDi j
;DDj k

ImagesListEE 
.EE 
AddEE 
(EE 
newEE 
BitmapImageEE *
(EE* +
newEE+ .
UriEE/ 2
(EE2 3
$strEE3 V
,EEV W
UriKindEEX _
.EE_ `
RelativeEE` h
)EEh i
)EEi j
)EEj k
;EEk l

ImagesListFF 
.FF 
AddFF 
(FF 
newFF 
BitmapImageFF *
(FF* +
newFF+ .
UriFF/ 2
(FF2 3
$strFF3 Q
,FFQ R
UriKindFFS Z
.FFZ [
RelativeFF[ c
)FFc d
)FFd e
)FFe f
;FFf g

ImagesListGG 
.GG 
AddGG 
(GG 
newGG 
BitmapImageGG *
(GG* +
newGG+ .
UriGG/ 2
(GG2 3
$strGG3 Y
,GGY Z
UriKindGG[ b
.GGb c
RelativeGGc k
)GGk l
)GGl m
)GGm n
;GGn o

ImagesListHH 
.HH 
AddHH 
(HH 
newHH 
BitmapImageHH *
(HH* +
newHH+ .
UriHH/ 2
(HH2 3
$strHH3 R
,HHR S
UriKindHHT [
.HH[ \
RelativeHH\ d
)HHd e
)HHe f
)HHf g
;HHg h

ImagesListII 
.II 
AddII 
(II 
newII 
BitmapImageII *
(II* +
newII+ .
UriII/ 2
(II2 3
$strII3 R
,IIR S
UriKindIIT [
.II[ \
RelativeII\ d
)IId e
)IIe f
)IIf g
;IIg h
imageDisplayJJ 
.JJ 
SourceJJ 
=JJ  !

ImagesListJJ" ,
[JJ, -
$numJJ- .
]JJ. /
;JJ/ 0
sliderImageKK 
.KK 
ValueChangedKK $
+=KK% '#
ImageSliderValueChangedKK( ?
;KK? @
}LL 	
privateNN 
voidNN 
SaveChangesNN  
(NN  !
objectNN! '
senderNN( .
,NN. /
RoutedEventArgsNN0 ?
eNN@ A
)NNA B
{NNC D
	UserModelOO 
	userModelOO 
=OO  !
newOO" %
	UserModelOO& /
{OO0 1
IdPP 
=PP 
SingletonClassPP #
.PP# $
InstancePP$ ,
.PP, -
IdUserPP- 3
,PP3 4
GamertagQQ 
=QQ 
textBoxGamertagQQ *
.QQ* +
TextQQ+ /
,QQ/ 0
EmailRR 
=RR 
textBoxEmailRR $
.RR$ %
TextRR% )
,RR) *
ImageProfileSS 
=SS 
GetImageValueSS ,
(SS, -
)SS- .
,SS. /
}TT 
;TT 
tryUU 
{UU 
ServiceReferenceVV  
.VV  !
IUserVV! &
clientVV' -
=VV. /
newVV0 3
ServiceReferenceVV4 D
.VVD E

UserClientVVE O
(VVO P
)VVP Q
;VVQ R
intWW 
resultUpdateUserWW $
=WW% &
clientWW' -
.WW- .
UpdateInfoUserWW. <
(WW< =
	userModelWW= F
,WWF G
SingletonClassWWH V
.WWV W
InstanceWWW _
.WW_ `
GamertagUserWW` l
)WWl m
;WWm n
SingletonClassXX 
.XX 
InstanceXX '
.XX' (
GamertagUserXX( 4
=XX5 6
	userModelXX7 @
.XX@ A
GamertagXXA I
;XXI J
ifYY 
(YY 
resultUpdateUserYY $
>YY% &
$numYY' (
)YY( )
{YY* +

MessageBoxZZ 
.ZZ 
ShowZZ #
(ZZ# $

PropertiesZZ$ .
.ZZ. /
	ResourcesZZ/ 8
.ZZ8 9
EditarExitosoZZ9 F
)ZZF G
;ZZG H
}[[ 
else[[ 
{[[ 

MessageBox\\ 
.\\ 
Show\\ #
(\\# $

Properties\\$ .
.\\. /
	Resources\\/ 8
.\\8 9
EditarFallo\\9 D
)\\D E
;\\E F
}]] 
UserMenu^^ 
userMenu^^ !
=^^" #
new^^$ '
UserMenu^^( 0
(^^0 1
)^^1 2
;^^2 3
userMenu__ 
.__ 
Show__ 
(__ 
)__ 
;__  
this`` 
.`` 
Close`` 
(`` 
)`` 
;`` 
}aa 
catchaa 
(aa "
CommunicationExceptionaa +
exaa, .
)aa. /
{aa0 1

MessageBoxbb 
.bb 
Showbb 
(bb  
$"bb  "
$strbb" 9
{bb9 :
exbb: <
.bb< =
Messagebb= D
}bbD E
"bbE F
)bbF G
;bbG H
}cc 
}dd 	
privateff 
voidff 
ChangePasswordff #
(ff# $
objectff$ *
senderff+ 1
,ff1 2 
MouseButtonEventArgsff3 G
effH I
)ffI J
{ffK L
ChangePasswordgg 
changePasswordgg )
=gg* +
newgg, /
ChangePasswordgg0 >
(gg> ?
)gg? @
;gg@ A
changePasswordhh 
.hh !
buttonBackWindowLoginhh 0
.hh0 1

Visibilityhh1 ;
=hh< =

Visibilityhh> H
.hhH I
	CollapsedhhI R
;hhR S
changePasswordii 
.ii '
buttonBackWindowEditProfileii 6
.ii6 7

Visibilityii7 A
=iiB C

VisibilityiiD N
.iiN O
VisibleiiO V
;iiV W
changePasswordjj 
.jj 
Showjj 
(jj  
)jj  !
;jj! "
thiskk 
.kk 
Closekk 
(kk 
)kk 
;kk 
}ll 	
privateoo 
voidoo '
LanguajeChangedEventHandleroo 0
(oo0 1
objectoo1 7
senderoo8 >
,oo> ?
	EventArgsoo@ I
eooJ K
)ooK L
{ooM N
UpdateUIResourcespp 
(pp 
)pp 
;pp  
}qq 	
privatess 
voidss 
UpdateUIResourcesss &
(ss& '
)ss' (
{ss) *!
textBlockRegisterUsertt !
.tt! "
Texttt" &
=tt' (

Propertiestt) 3
.tt3 4
	Resourcestt4 =
.tt= >
RegistroUsuariott> M
;ttM N
textBlockNameuu 
.uu 
Textuu 
=uu  

Propertiesuu! +
.uu+ ,
	Resourcesuu, 5
.uu5 6
Nombreuu6 <
;uu< =
textBlockEmailvv 
.vv 
Textvv 
=vv  !

Propertiesvv" ,
.vv, -
	Resourcesvv- 6
.vv6 7
Correovv7 =
;vv= >
buttonSaveChangesww 
.ww 
Contentww %
=ww& '

Propertiesww( 2
.ww2 3
	Resourcesww3 <
.ww< =
Registrarseww= H
;wwH I
}xx 	
privatezz 
voidzz 

BackWindowzz 
(zz  
objectzz  &
senderzz' -
,zz- .
RoutedEventArgszz/ >
ezz? @
)zz@ A
{zzB C
UserMenu{{ 
userMenu{{ 
={{ 
new{{  #
UserMenu{{$ ,
({{, -
){{- .
;{{. /
userMenu|| 
.|| 
Show|| 
(|| 
)|| 
;|| 
this}} 
.}} 
Close}} 
(}} 
)}} 
;}} 
}~~ 	
private
ÄÄ 
void
ÄÄ %
ImageSliderValueChanged
ÄÄ ,
(
ÄÄ, -
object
ÄÄ- 3
sender
ÄÄ4 :
,
ÄÄ: ;,
RoutedPropertyChangedEventArgs
ÄÄ< Z
<
ÄÄZ [
double
ÄÄ[ a
>
ÄÄa b
e
ÄÄc d
)
ÄÄd e
{
ÄÄf g
int
ÅÅ 
selectedIndex
ÅÅ 
=
ÅÅ 
(
ÅÅ  !
int
ÅÅ! $
)
ÅÅ$ %
sliderImage
ÅÅ% 0
.
ÅÅ0 1
Value
ÅÅ1 6
;
ÅÅ6 7
if
ÇÇ 
(
ÇÇ 
selectedIndex
ÇÇ 
>=
ÇÇ  
$num
ÇÇ! "
&&
ÇÇ# %
selectedIndex
ÇÇ& 3
<
ÇÇ4 5

ImagesList
ÇÇ6 @
.
ÇÇ@ A
Count
ÇÇA F
)
ÇÇF G
{
ÇÇH I
imageDisplay
ÉÉ 
.
ÉÉ 
Source
ÉÉ #
=
ÉÉ$ %

ImagesList
ÉÉ& 0
[
ÉÉ0 1
selectedIndex
ÉÉ1 >
]
ÉÉ> ?
;
ÉÉ? @
}
ÑÑ 
ActivateButton
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
private
ââ 
string
ââ 
GetImageValue
ââ $
(
ââ$ %
)
ââ% &
{
ââ' (
int
ää 
selectedIndex
ää 
=
ää 
(
ää  !
int
ää! $
)
ää$ %
sliderImage
ää% 0
.
ää0 1
Value
ää1 6
;
ää6 7
string
ãã 

valueImage
ãã 
=
ãã 
$str
ãã  "
;
ãã" #
if
åå 
(
åå 
selectedIndex
åå 
>=
åå  
$num
åå! "
&&
åå# %
selectedIndex
åå& 3
<
åå4 5

ImagesList
åå6 @
.
åå@ A
Count
ååA F
)
ååF G
{
ååH I
string
çç 
	imagePath
çç  
=
çç! "

ImagesList
çç# -
[
çç- .
selectedIndex
çç. ;
]
çç; <
.
çç< =
ToString
çç= E
(
ççE F
)
ççF G
;
ççG H

valueImage
éé 
=
éé 
Path
éé !
.
éé! "
GetFileName
éé" -
(
éé- .
	imagePath
éé. 7
)
éé7 8
;
éé8 9
}
èè 
return
êê 

valueImage
êê 
;
êê 
}
ëë 	
private
ìì 
void
ìì 
ValidateTextBox
ìì $
(
ìì$ %
object
ìì% +
sender
ìì, 2
,
ìì2 3"
TextChangedEventArgs
ìì4 H
e
ììI J
)
ììJ K
{
ììL M
ActivateButton
îî 
(
îî 
)
îî 
;
îî 
}
ïï 	
private
óó 
void
óó 
ActivateButton
óó #
(
óó# $
)
óó$ %
{
óó& '
buttonSaveChanges
òò 
.
òò 
	IsEnabled
òò '
=
òò( )
false
òò* /
;
òò/ 0
bool
ôô 
isValidationTrue
ôô !
=
ôô" #
!
ôô$ %

Validation
ôô% /
.
ôô/ 0
GetHasError
ôô0 ;
(
ôô; <
textBoxGamertag
ôô< K
)
ôôK L
&&
ôôM O
!
ôôP Q

Validation
ôôQ [
.
ôô[ \
GetHasError
ôô\ g
(
ôôg h
textBoxEmail
ôôh t
)
ôôt u
;
ôôu v
bool
öö 
isGamertagValid
öö  
=
öö! "
textBoxGamertag
öö# 2
.
öö2 3
Text
öö3 7
!=
öö8 :
SingletonClass
öö; I
.
ööI J
Instance
ööJ R
.
ööR S
GamertagUser
ööS _
;
öö_ `
bool
õõ 
isEmailValid
õõ 
=
õõ 
textBoxEmail
õõ  ,
.
õõ, -
Text
õõ- 1
!=
õõ2 4
SingletonClass
õõ5 C
.
õõC D
Instance
õõD L
.
õõL M
	EmailUser
õõM V
;
õõV W
bool
úú 
isImageDiferent
úú  
=
úú! "
(
úú# $
int
úú$ '
)
úú' (
sliderImage
úú( 3
.
úú3 4
Value
úú4 9
!=
úú: <
SingletonClass
úú= K
.
úúK L
Instance
úúL T
.
úúT U
ImageProfileUser
úúU e
;
úúe f
if
ùù 
(
ùù 
isValidationTrue
ùù  
)
ùù  !
{
ùù" #
if
ûû 
(
ûû 
isGamertagValid
ûû #
||
ûû$ &
isEmailValid
ûû' 3
||
ûû4 6
isImageDiferent
ûû7 F
)
ûûF G
{
ûûH I
buttonSaveChanges
üü %
.
üü% &
	IsEnabled
üü& /
=
üü0 1
true
üü2 6
;
üü6 7
}
†† 
}
°° 
else
°° 
{
°° 
buttonSaveChanges
¢¢ !
.
¢¢! "
	IsEnabled
¢¢" +
=
¢¢, -
false
¢¢. 3
;
¢¢3 4
}
££ 
}
§§ 	
}
•• 
}¶¶ ∏.
XC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\UserControls\Friend.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
UserControls  ,
{- .
public 

partial 
class 
Friend 
:  !
UserControl" -
,- ."
INotifyPropertyChanged/ E
{F G
public 
Friend 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
this 
. 
DataContext 
= 
this #
;# $
} 	
private 
string 
	_gamertag  
;  !
private   
string   
	_pathFile    
;    !
private!! 
bool!! 
	_isOnline!! 
;!! 
public## 
string## 
Gamertag## 
{##  
get$$ 
{$$ 
return$$ 
	_gamertag$$ "
;$$" #
}$$$ %
set%% 
{%% 
if&& 
(&& 
	_gamertag&& 
!=&&  
value&&! &
)&&& '
{&&( )
	_gamertag'' 
='' 
value''  %
;''% &
OnPropertyChanged(( %
(((% &
nameof((& ,
(((, -
Gamertag((- 5
)((5 6
)((6 7
;((7 8
})) 
}** 
}++ 	
public-- 
string-- 
PathFile-- 
{--  
get.. 
{.. 
return.. 
	_pathFile.. "
;.." #
}..$ %
set// 
{// 
if00 
(00 
	_pathFile00 
!=00  
value00! &
)00& '
{00( )
	_pathFile11 
=11 
value11  %
;11% &
OnPropertyChanged22 %
(22% &
nameof22& ,
(22, -
PathFile22- 5
)225 6
)226 7
;227 8
}33 
}44 
}55 	
public77 
bool77 
IsOnline77 
{77 
get88 
{88 
return88 
	_isOnline88 "
;88" #
}88$ %
set99 
{99 
if:: 
(:: 
	_isOnline:: 
!=::  
value::! &
)::& '
{::( )
	_isOnline;; 
=;; 
value;;  %
;;;% &
OnPropertyChanged<< %
(<<% &
nameof<<& ,
(<<, -
IsOnline<<- 5
)<<5 6
)<<6 7
;<<7 8
}== 
}>> 
}?? 	
publicAA 
eventAA '
PropertyChangedEventHandlerAA 0
PropertyChangedAA1 @
;AA@ A
	protectedCC 
virtualCC 
voidCC 
OnPropertyChangedCC 0
(CC0 1
stringCC1 7
propertyNameCC8 D
)CCD E
{CCF G
PropertyChangedDD 
?DD 
.DD 
InvokeDD #
(DD# $
thisDD$ (
,DD( )
newDD* -$
PropertyChangedEventArgsDD. F
(DDF G
propertyNameDDG S
)DDS T
)DDT U
;DDU V
}EE 	
privateGG 
voidGG 
InviteFriendGG !
(GG! "
objectGG" (
senderGG) /
,GG/ 0 
MouseButtonEventArgsGG1 E
eGGF G
)GGG H
{GGI J
tryHH 
{HH 
ServiceReferenceII  
.II  !
IFriendshipII! ,
clientFriendshipII- =
=II> ?
newII@ C
ServiceReferenceIID T
.IIT U
FriendshipClientIIU e
(IIe f
)IIf g
;IIg h
ServiceReferenceJJ  
.JJ  !
IUserJJ! &

clientUserJJ' 1
=JJ2 3
newJJ4 7
ServiceReferenceJJ8 H
.JJH I

UserClientJJI S
(JJS T
)JJT U
;JJU V
intLL 
idFriendLL 
=LL 

clientUserLL )
.LL) *
GetIdLL* /
(LL/ 0
thisLL0 4
.LL4 5
GamertagLL5 =
)LL= >
;LL> ?
FriendshipModelMM 

friendshipMM  *
=MM+ ,
newMM- 0
FriendshipModelMM1 @
(MM@ A
)MMA B
{MMC D
IdUserNN 
=NN 
SingletonClassNN +
.NN+ ,
InstanceNN, 4
.NN4 5
IdUserNN5 ;
,NN; <
IdFriendOO 
=OO 
idFriendOO '
,OO' (
RequestStatusPP !
=PP" # 
StatusOfNotificationPP$ 8
.PP8 9
PendingPP9 @
.PP@ A
ToStringPPA I
(PPI J
)PPJ K
,PPK L
TypeNotificationQQ $
=QQ% &
NotificationQQ' 3
.QQ3 4
GameRequestQQ4 ?
.QQ? @
ToStringQQ@ H
(QQH I
)QQI J
,QQJ K
IdRoomRR 
=RR 
SingletonClassRR +
.RR+ ,
InstanceRR, 4
.RR4 5
IdRoomRR5 ;
}SS 
;SS 
clientFriendshipTT  
.TT  !
AddFriendPlayerTT! 0
(TT0 1

friendshipTT1 ;
)TT; <
;TT< =

MessageBoxUU 
.UU 
ShowUU 
(UU  

PropertiesUU  *
.UU* +
	ResourcesUU+ 4
.UU4 5
InvitacionEnviadaUU5 F
)UUF G
;UUG H
}VV 
catchVV 
(VV "
CommunicationExceptionVV +
exVV, .
)VV. /
{VV0 1

MessageBoxWW 
.WW 
ShowWW 
(WW  
$"WW  "
$strWW" 9
{WW9 :
exWW: <
.WW< =
MessageWW= D
}WWD E
"WWE F
)WWF G
;WWG H
}XX 
}YY 	
}ZZ 
}[[ ˘e
\C:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\UserControls\FriendList.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
UserControls  ,
{- .
public 

partial 
class 

FriendList #
:$ %
UserControl& 1
,1 2
ServiceReference3 C
.C D!
IUsersManagerCallbackD Y
{Z [
private 
SemaphoreSlim 

_semaphore (
=) *
new+ .
SemaphoreSlim/ <
(< =
$num= >
,> ?
$num@ A
)A B
;B C
public 

FriendList 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
IsVisibleChanged 
+= 
IsVisibleFriendList  3
;3 4
} 	
public   
List   
<   
Friend   
>   
FriendsList   '
{  ( )
get!! 
{!! 
return!! 
(!! 
List!! 
<!! 
Friend!! %
>!!% &
)!!& '
listOfFriends!!' 4
.!!4 5
ItemsSource!!5 @
;!!@ A
}!!B C
set"" 
{"" 
listOfFriends"" 
.""  
ItemsSource""  +
="", -
value"". 3
;""3 4
}""5 6
}## 	
private%% 
void%% 
ShowFriendList%% #
(%%# $
object%%$ *
sender%%+ 1
,%%1 2 
MouseButtonEventArgs%%3 G
e%%H I
)%%I J
{%%K L 
textBoxFoundGamertag&&  
.&&  !

Visibility&&! +
=&&, -

Visibility&&. 8
.&&8 9
	Collapsed&&9 B
;&&B C
imageFindFriend'' 
.'' 

Visibility'' &
=''' (

Visibility'') 3
.''3 4
	Collapsed''4 =
;''= >
try(( 
{(( 
ServiceReference))  
.))  !
IUsersManager))! .
client))/ 5
=))6 7
new))8 ;
ServiceReference))< L
.))L M
UsersManagerClient))M _
())_ `
new))` c
InstanceContext))d s
())s t
this))t x
)))x y
)))y z
;))z {
client** 
.** 

GetFriends** !
(**! "
SingletonClass**" 0
.**0 1
Instance**1 9
.**9 :
GamertagUser**: F
)**F G
;**G H
}++ 
catch++ 
(++ "
CommunicationException++ +
ex++, .
)++. /
{++0 1

MessageBox,, 
.,, 
Show,, 
(,,  
$",,  "
$str,," 9
{,,9 :
ex,,: <
.,,< =
Message,,= D
},,D E
",,E F
),,F G
;,,G H
}-- 
}.. 	
private00 
void00 
ShowFindFriend00 #
(00# $
object00$ *
sender00+ 1
,001 2 
MouseButtonEventArgs003 G
e00H I
)00I J
{00K L
if11 
(11  
textBoxFoundGamertag11 $
.11$ %

Visibility11% /
==110 2

Visibility113 =
.11= >
	Collapsed11> G
)11G H
{11I J 
textBoxFoundGamertag22 $
.22$ %

Visibility22% /
=220 1

Visibility222 <
.22< =
Visible22= D
;22D E
imageFindFriend33 
.33  

Visibility33  *
=33+ ,

Visibility33- 7
.337 8
Visible338 ?
;33? @
listOfFriends44 
.44 
ItemsSource44 )
=44* +
null44, 0
;440 1
listOfFriends55 
.55 
Items55 #
.55# $
Clear55$ )
(55) *
)55* +
;55+ ,
}66 
else66 
{66  
textBoxFoundGamertag77 $
.77$ %

Visibility77% /
=770 1

Visibility772 <
.77< =
	Collapsed77= F
;77F G
imageFindFriend88 
.88  

Visibility88  *
=88+ ,

Visibility88- 7
.887 8
	Collapsed888 A
;88A B
}99 
}:: 	
public<< 
void<< 
GetFriendsCallback<< &
(<<& '

Dictionary<<' 1
<<<1 2
string<<2 8
,<<8 9
Tuple<<: ?
<<<? @
string<<@ F
,<<F G
bool<<H L
><<L M
><<M N
stateFriend<<O Z
)<<Z [
{<<\ ]
listOfFriends== 
.== 
ItemsSource== %
===& '
null==( ,
;==, -
listOfFriends>> 
.>> 
Items>> 
.>>  
Clear>>  %
(>>% &
)>>& '
;>>' (
try?? 
{?? 
Application@@ 
.@@ 
Current@@ #
.@@# $

Dispatcher@@$ .
.@@. /
Invoke@@/ 5
(@@5 6
(@@6 7
)@@7 8
=>@@9 ;
{@@< =

_semaphoreAA 
.AA 
WaitAA #
(AA# $
)AA$ %
;AA% &
tryBB 
{BB 
varCC 
friendsListCC '
=CC( )
newCC* -
ListCC. 2
<CC2 3
FriendCC3 9
>CC9 :
(CC: ;
)CC; <
;CC< =
foreachDD 
(DD  !
varDD! $
friendDD% +
inDD, .
stateFriendDD/ :
)DD: ;
{DD< =
varEE 
friendPlayerEE  ,
=EE- .
newEE/ 2
FriendEE3 9
{EE: ;
GamertagFF  (
=FF) *
friendFF+ 1
.FF1 2
KeyFF2 5
,FF5 6
PathFileGG  (
=GG) *
$"GG+ -
$strGG- ?
{GG? @
friendGG@ F
.GGF G
ValueGGG L
.GGL M
Item1GGM R
}GGR S
"GGS T
,GGT U
IsOnlineHH  (
=HH) *
friendHH+ 1
.HH1 2
ValueHH2 7
.HH7 8
Item2HH8 =
}II 
;II 
friendsListJJ '
.JJ' (
AddJJ( +
(JJ+ ,
friendPlayerJJ, 8
)JJ8 9
;JJ9 :
}KK 
FriendsListLL #
=LL$ %
friendsListLL& 1
;LL1 2

VisibilityMM "
=MM# $

VisibilityMM% /
.MM/ 0
VisibleMM0 7
;MM7 8
}NN 
finallyNN 
{NN 

_semaphoreOO "
.OO" #
ReleaseOO# *
(OO* +
)OO+ ,
;OO, -
}PP 
}QQ 
)QQ 
;QQ 
}RR 
catchRR 
(RR "
CommunicationExceptionRR +
exRR, .
)RR. /
{RR0 1

MessageBoxSS 
.SS 
ShowSS 
(SS  
exSS  "
.SS" #
MessageSS# *
)SS* +
;SS+ ,
}TT 
}UU 	
privateWW 
voidWW 
TxtMessageGotFocusWW '
(WW' (
objectWW( .
senderWW/ 5
,WW5 6
RoutedEventArgsWW7 F
eWWG H
)WWH I
{WWJ K
ifXX 
(XX  
textBoxFoundGamertagXX $
.XX$ %
TextXX% )
==XX* ,

PropertiesXX- 7
.XX7 8
	ResourcesXX8 A
.XXA B
BuscarAmigoXXB M
)XXM N
{XXO P 
textBoxFoundGamertagYY $
.YY$ %
TextYY% )
=YY* +
stringYY, 2
.YY2 3
EmptyYY3 8
;YY8 9
}ZZ 
}[[ 	
private]] 
void]] 
TxtMessageLostFocus]] (
(]]( )
object]]) /
sender]]0 6
,]]6 7
RoutedEventArgs]]8 G
e]]H I
)]]I J
{]]K L
if^^ 
(^^ 
string^^ 
.^^ 
IsNullOrWhiteSpace^^ )
(^^) * 
textBoxFoundGamertag^^* >
.^^> ?
Text^^? C
)^^C D
)^^D E
{^^F G 
textBoxFoundGamertag__ $
.__$ %
Text__% )
=__* +

Properties__, 6
.__6 7
	Resources__7 @
.__@ A
BuscarAmigo__A L
;__L M
}`` 
}aa 	
privatecc 
voidcc 
IsVisibleFriendListcc (
(cc( )
objectcc) /
sendercc0 6
,cc6 7.
"DependencyPropertyChangedEventArgscc8 Z
ecc[ \
)cc\ ]
{cc^ _
listOfFriendsdd 
.dd 
ItemsSourcedd %
=dd& '
nulldd( ,
;dd, -
listOfFriendsee 
.ee 
Itemsee 
.ee  
Clearee  %
(ee% &
)ee& '
;ee' (
}ff 	
privatehh 
voidhh 

FindFriendhh 
(hh  
objecthh  &
senderhh' -
,hh- . 
MouseButtonEventArgshh/ C
ehhD E
)hhE F
{hhG H
listOfFriendsii 
.ii 
ItemsSourceii %
=ii& '
nullii( ,
;ii, -
listOfFriendsjj 
.jj 
Itemsjj 
.jj  
Clearjj  %
(jj% &
)jj& '
;jj' (
SingletonClasskk 
.kk 
Instancekk #
.kk# $
GamertagFriendkk$ 2
=kk3 4 
textBoxFoundGamertagkk5 I
.kkI J
TextkkJ N
;kkN O
Applicationll 
.ll 
Currentll 
.ll  

Dispatcherll  *
.ll* +
Invokell+ 1
(ll1 2
(ll2 3
)ll3 4
=>ll5 7
{ll8 9

_semaphoremm 
.mm 
Waitmm 
(mm  
)mm  !
;mm! "
trynn 
{nn 
ServiceReferenceoo $
.oo$ %
IUseroo% *
clientoo+ 1
=oo2 3
newoo4 7
ServiceReferenceoo8 H
.ooH I

UserClientooI S
(ooS T
)ooT U
;ooU V
stringpp 
gamertagToFoundpp *
=pp+ ,
clientpp- 3
.pp3 4
FindGamertagpp4 @
(pp@ A
SingletonClassppA O
.ppO P
InstanceppP X
.ppX Y
GamertagUserppY e
,ppe f 
textBoxFoundGamertagppg {
.pp{ |
Text	pp| Ä
)
ppÄ Å
;
ppÅ Ç
ifqq 
(qq 
stringqq 
.qq 
IsNullOrEmptyqq ,
(qq, -
gamertagToFoundqq- <
)qq< =
)qq= >
{qq? @

MessageBoxrr "
.rr" #
Showrr# '
(rr' (

Propertiesrr( 2
.rr2 3
	Resourcesrr3 <
.rr< = 
GamertagNoEncontradorr= Q
)rrQ R
;rrR S
}ss 
elsess 
{ss 
AddFriendRequesttt (
(tt( )
gamertagToFoundtt) 8
,tt8 9
clienttt: @
.tt@ A
GetPlayerImagettA O
(ttO P
gamertagToFoundttP _
)tt_ `
)tt` a
;tta b
}uu 
}vv 
catchvv 
(vv "
CommunicationExceptionvv /
exvv0 2
)vv2 3
{vv4 5

MessageBoxww 
.ww 
Showww #
(ww# $
$"ww$ &
$strww& =
{ww= >
exww> @
.ww@ A
MessagewwA H
}wwH I
"wwI J
)wwJ K
;wwK L
}xx 
finallyxx 
{xx 

_semaphoreyy 
.yy 
Releaseyy &
(yy& '
)yy' (
;yy( )
}zz 
}{{ 
){{ 
;{{ 
}|| 	
public~~ 
void~~ 
AddFriendRequest~~ $
(~~$ %
string~~% +
gamertag~~, 4
,~~4 5
string~~6 <
pathFile~~= E
)~~E F
{~~G H
var 
friendControl 
= 
new  #
FriendRequest$ 1
{2 3
Gamertag
ÄÄ 
=
ÄÄ 
gamertag
ÄÄ #
,
ÄÄ# $
PathFile
ÅÅ 
=
ÅÅ 
pathFile
ÅÅ #
,
ÅÅ# $
}
ÇÇ 
;
ÇÇ 
this
ÉÉ 
.
ÉÉ 
listOfFriends
ÉÉ 
.
ÉÉ 
Items
ÉÉ $
.
ÉÉ$ %
Add
ÉÉ% (
(
ÉÉ( )
friendControl
ÉÉ) 6
)
ÉÉ6 7
;
ÉÉ7 8
this
ÑÑ 
.
ÑÑ 
listOfFriends
ÑÑ 
.
ÑÑ 
Items
ÑÑ $
.
ÑÑ$ %
Refresh
ÑÑ% ,
(
ÑÑ, -
)
ÑÑ- .
;
ÑÑ. /
this
ÖÖ 
.
ÖÖ 
listOfFriends
ÖÖ 
.
ÖÖ 
InvalidateVisual
ÖÖ /
(
ÖÖ/ 0
)
ÖÖ0 1
;
ÖÖ1 2
}
ÜÜ 	
}
áá 
}àà »
aC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\UserControls\FriendListLobby.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
UserControls  ,
{- .
public 

partial 
class 
FriendListLobby (
:) *
UserControl+ 6
{7 8
public 
FriendListLobby 
( 
)  
{! "
InitializeComponent 
(  
)  !
;! "
} 	
public 
List 
< 
Friend 
> 
FriendsListLobby ,
{- .
get 
{ 
return 
( 
List 
< 
Friend %
>% &
)& '
listOfFriends' 4
.4 5
ItemsSource5 @
;@ A
}B C
set 
{ 
listOfFriends 
.  
ItemsSource  +
=, -
value. 3
;3 4
}5 6
} 	
public    
ObservableCollection   #
<  # $
FriendReport  $ 0
>  0 1"
FriendsListLobbyReport  2 H
{  I J
get!! 
{!! 
return!! 
(!!  
ObservableCollection!! .
<!!. /
FriendReport!!/ ;
>!!; <
)!!< =
listOfFriends!!= J
.!!J K
ItemsSource!!K V
;!!V W
}!!X Y
set"" 
{"" 
listOfFriends"" 
.""  
ItemsSource""  +
="", -
value"". 3
;""3 4
}""5 6
}## 	
}$$ 
}%% —+
^C:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\UserControls\FriendReport.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
UserControls  ,
{- .
public 

partial 
class 
FriendReport %
:& '
UserControl( 3
,3 4"
INotifyPropertyChanged5 K
{L M
public 
FriendReport 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
this 
. 
DataContext 
= 
this #
;# $
} 	
private 
string 
	_gamertag  
;  !
private   
string   
	_pathFile    
;    !
private!! 
bool!! 
	_isOnline!! 
;!! 
private"" 
bool"" 
	_isReport"" 
;"" 
public$$ 
string$$ 
Gamertag$$ 
{$$  
get%% 
{%% 
return%% 
	_gamertag%% "
;%%" #
}%%$ %
set&& 
{&& 
if'' 
('' 
	_gamertag'' 
!=''  
value''! &
)''& '
{''( )
	_gamertag(( 
=(( 
value((  %
;((% &
OnPropertyChanged)) %
())% &
nameof))& ,
()), -
Gamertag))- 5
)))5 6
)))6 7
;))7 8
}** 
}++ 
},, 	
public.. 
string.. 
PathFile.. 
{..  
get// 
{// 
return// 
	_pathFile// "
;//" #
}//$ %
set00 
{00 
if11 
(11 
	_pathFile11 
!=11  
value11! &
)11& '
{11( )
	_pathFile22 
=22 
value22  %
;22% &
OnPropertyChanged33 %
(33% &
nameof33& ,
(33, -
PathFile33- 5
)335 6
)336 7
;337 8
}44 
}55 
}66 	
public88 
bool88 
IsOnline88 
{88 
get99 
{99 
return99 
	_isOnline99 "
;99" #
}99$ %
set:: 
{:: 
if;; 
(;; 
	_isOnline;; 
!=;;  
value;;! &
);;& '
{;;( )
	_isOnline<< 
=<< 
value<<  %
;<<% &
OnPropertyChanged== %
(==% &
nameof==& ,
(==, -
IsOnline==- 5
)==5 6
)==6 7
;==7 8
}>> 
}?? 
}@@ 	
publicBB 
boolBB 
IsReportBB 
{BB 
getCC 
{CC 
returnCC 
	_isReportCC "
;CC" #
}CC$ %
setDD 
{DD 
ifEE 
(EE 
	_isReportEE 
!=EE  
valueEE! &
)EE& '
{EE( )
	_isReportFF 
=FF 
valueFF  %
;FF% &
OnPropertyChangedGG %
(GG% &
nameofGG& ,
(GG, -
IsReportGG- 5
)GG5 6
)GG6 7
;GG7 8
}HH 
}II 
}JJ 	
privateLL 
voidLL 
ReportPlayerLL !
(LL! "
objectLL" (
senderLL) /
,LL/ 0 
MouseButtonEventArgsLL1 E
eLLF G
)LLG H
{LLI J
stringMM 
GamertagSelectedMM #
=MM$ %
thisMM& *
.MM* +
GamertagMM+ 3
;MM3 4
SingletonClassNN 
.NN 
InstanceNN #
.NN# $"
GamertagPlayerSelectedNN$ :
=NN; <
GamertagSelectedNN= M
;NNM N
LobbyOO 
lobbyWindowOO 
=OO 
LobbyOO  %
.OO% &
	GetWindowOO& /
(OO/ 0
thisOO0 4
)OO4 5
asOO6 8
LobbyOO9 >
;OO> ?
ifPP 
(PP 
lobbyWindowPP 
!=PP 
nullPP #
)PP# $
{PP% &
ReportPlayerQQ 
reportPlayerQQ )
=QQ* +
newQQ, /
ReportPlayerQQ0 <
(QQ< =
)QQ= >
;QQ> ?
reportPlayerRR 
.RR 
OwnerRR "
=RR# $
lobbyWindowRR% 0
;RR0 1
lobbyWindowSS 
.SS 

VisibilitySS &
=SS' (

VisibilitySS) 3
.SS3 4
HiddenSS4 :
;SS: ;
reportPlayerTT 
.TT 

ShowDialogTT '
(TT' (
)TT( )
;TT) *
lobbyWindowUU 
.UU 

VisibilityUU &
=UU' (

VisibilityUU) 3
.UU3 4
VisibleUU4 ;
;UU; <
}VV 
}WW 	
publicYY 
eventYY '
PropertyChangedEventHandlerYY 0
PropertyChangedYY1 @
;YY@ A
	protected[[ 
virtual[[ 
void[[ 
OnPropertyChanged[[ 0
([[0 1
string[[1 7
propertyName[[8 D
)[[D E
{[[F G
PropertyChanged\\ 
?\\ 
.\\ 
Invoke\\ #
(\\# $
this\\$ (
,\\( )
new\\* -$
PropertyChangedEventArgs\\. F
(\\F G
propertyName\\G S
)\\S T
)\\T U
;\\U V
}]] 	
}^^ 
}__ ‹7
_C:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\UserControls\FriendRequest.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
UserControls  ,
{- .
public 

partial 
class 
FriendRequest &
:' (
UserControl) 4
,4 5"
INotifyPropertyChanged6 L
{M N
public 
FriendRequest 
( 
) 
{  
InitializeComponent 
(  
)  !
;! "
this 
. 
DataContext 
= 
this #
;# $
} 	
private 
string 
	_gamertag  
;  !
private   
string   
	_pathFile    
;    !
public"" 
string"" 
Gamertag"" 
{""  
get## 
{## 
return## 
	_gamertag## "
;##" #
}##$ %
set$$ 
{$$ 
if%% 
(%% 
	_gamertag%% 
!=%%  
value%%! &
)%%& '
{%%( )
	_gamertag&& 
=&& 
value&&  %
;&&% &
OnPropertyChanged'' %
(''% &
nameof''& ,
('', -
Gamertag''- 5
)''5 6
)''6 7
;''7 8
}(( 
})) 
}** 	
public,, 
string,, 
PathFile,, 
{,,  
get-- 
{-- 
return-- 
	_pathFile-- "
;--" #
}--$ %
set.. 
{.. 
if// 
(// 
	_pathFile// 
!=//  
value//! &
)//& '
{//( )
	_pathFile00 
=00 
value00  %
;00% &
OnPropertyChanged11 %
(11% &
nameof11& ,
(11, -
PathFile11- 5
)115 6
)116 7
;117 8
}22 
}33 
}44 	
	protected66 
virtual66 
void66 
OnPropertyChanged66 0
(660 1
string661 7
propertyName668 D
)66D E
{66F G
PropertyChanged77 
?77 
.77 
Invoke77 #
(77# $
this77$ (
,77( )
new77* -$
PropertyChangedEventArgs77. F
(77F G
propertyName77G S
)77S T
)77T U
;77U V
}88 	
public:: 
event:: '
PropertyChangedEventHandler:: 0
PropertyChanged::1 @
;::@ A
private<< 
void<< 
SendRequest<<  
(<<  !
object<<! '
sender<<( .
,<<. / 
MouseButtonEventArgs<<0 D
e<<E F
)<<F G
{<<H I
try== 
{== 
ServiceReference>>  
.>>  !
IUser>>! &

clientUser>>' 1
=>>2 3
new>>4 7
ServiceReference>>8 H
.>>H I

UserClient>>I S
(>>S T
)>>T U
;>>U V
ServiceReference??  
.??  !
IFriendship??! ,
clientFriendship??- =
=??> ?
new??@ C
ServiceReference??D T
.??T U
FriendshipClient??U e
(??e f
)??f g
;??g h
intAA 
idFriendAA 
=AA 

clientUserAA )
.AA) *
GetIdAA* /
(AA/ 0
SingletonClassAA0 >
.AA> ?
InstanceAA? G
.AAG H
GamertagFriendAAH V
)AAV W
;AAW X
SingletonClassBB 
.BB 
InstanceBB '
.BB' (
IdFriendBB( 0
=BB1 2
idFriendBB3 ;
;BB; <0
$FriendRequestDuplicityValidationRuleCC 40
$friendRequestDuplicityValidationRuleCC5 Y
=CCZ [
newCC\ _1
$FriendRequestDuplicityValidationRule	CC` Ñ
(
CCÑ Ö
)
CCÖ Ü
;
CCÜ á
ifDD 
(DD 
!DD 0
$friendRequestDuplicityValidationRuleDD 9
.DD9 :
ValidateDD: B
(DDB C
thisDDC G
.DDG H
GamertagDDH P
,DDP Q
nullDDR V
)DDV W
.DDW X
IsValidDDX _
)DD_ `
{DDa b

MessageBoxEE 
.EE 
ShowEE #
(EE# $

PropertiesEE$ .
.EE. /
	ResourcesEE/ 8
.EE8 9%
SolicitudAmistadDuplicadoEE9 R
)EER S
;EES T
}FF 
elseFF 
{FF 
EmailGG 
emailGG 
=GG  !
newGG" %
EmailGG& +
(GG+ ,
)GG, -
;GG- .
stringHH 
addressHH "
=HH# $

clientUserHH% /
.HH/ 0
GetEmailHH0 8
(HH8 9
SingletonClassHH9 G
.HHG H
InstanceHHH P
.HHP Q
GamertagFriendHHQ _
)HH_ `
;HH` a
stringII 
textII 
=II  !
emailII" '
.II' (
FormatSendRequestII( 9
(II9 :
SingletonClassII: H
.IIH I
InstanceIII Q
.IIQ R
GamertagUserIIR ^
)II^ _
;II_ `
emailJJ 
.JJ 
	SendEmailJJ #
(JJ# $

PropertiesJJ$ .
.JJ. /
	ResourcesJJ/ 8
.JJ8 9
SolicitudAmistadJJ9 I
,JJI J
textJJK O
,JJO P
addressJJQ X
)JJX Y
;JJY Z

MessageBoxKK 
.KK 
ShowKK #
(KK# $

PropertiesKK$ .
.KK. /
	ResourcesKK/ 8
.KK8 9
SolicitudEnviadaKK9 I
)KKI J
;KKJ K
FriendshipModelLL #

friendshipLL$ .
=LL/ 0
newLL1 4
FriendshipModelLL5 D
(LLD E
)LLE F
{LLG H
IdUserMM 
=MM  
SingletonClassMM! /
.MM/ 0
InstanceMM0 8
.MM8 9
IdUserMM9 ?
,MM? @
IdFriendNN  
=NN! "
idFriendNN# +
,NN+ ,
RequestStatusOO %
=OO& ' 
StatusOfNotificationOO( <
.OO< =
PendingOO= D
.OOD E
ToStringOOE M
(OOM N
)OON O
,OOO P
TypeNotificationPP (
=PP) *
NotificationPP+ 7
.PP7 8
FriendRequestPP8 E
.PPE F
ToStringPPF N
(PPN O
)PPO P
}QQ 
;QQ 
clientFriendshipRR $
.RR$ %
AddFriendPlayerRR% 4
(RR4 5

friendshipRR5 ?
)RR? @
;RR@ A
}SS 
}TT 
catchTT 
(TT "
CommunicationExceptionTT +
exTT, .
)TT. /
{TT0 1

MessageBoxUU 
.UU 
ShowUU 
(UU  
$"UU  "
$strUU" 9
{UU9 :
exUU: <
.UU< =
MessageUU= D
}UUD E
"UUE F
)UUF G
;UUG H
}VV 
}WW 	
}XX 
}YY öm
OC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\View\Lobby.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
View  $
{% &
public 

partial 
class 
Lobby 
:  
Window! '
,' (
ServiceReference) 9
.9 :!
IUsersManagerCallback: O
,O P
ServiceReferenceQ a
.a b 
IPlayersRoomCallbackb v
,v w
ServiceReference	x à
.
à â
IBoardCallback
â ó
{
ò ô
public 
Lobby 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
ServiceReference 
. 
IUsersManager *
clientUsers+ 6
=7 8
new9 <
ServiceReference= M
.M N
UsersManagerClientN `
(` a
newa d
InstanceContexte t
(t u
thisu y
)y z
)z {
;{ |
ServiceReference 
. 
IPlayersRoom )

clientRoom* 4
=5 6
new7 :
ServiceReference; K
.K L
PlayersRoomClientL ]
(] ^
new^ a
InstanceContextb q
(q r
thisr v
)v w
)w x
;x y
ServiceReference 
. 
IBoard #
board$ )
=* +
new, /
ServiceReference0 @
.@ A
BoardClientA L
(L M
newM P
InstanceContextQ `
(` a
thisa e
)e f
)f g
;g h
board   
.   
AddPlayerInBoard   "
(  " #
SingletonClass  # 1
.  1 2
Instance  2 :
.  : ;
GamertagUser  ; G
,  G H
SingletonClass  I W
.  W X
Instance  X `
.  ` a
IdRoom  a g
)  g h
;  h i
clientUsers!! 
.!! 

GetFriends!! "
(!!" #
SingletonClass!!# 1
.!!1 2
Instance!!2 :
.!!: ;
GamertagUser!!; G
)!!G H
;!!H I

clientRoom"" 
."" 
AddPlayerRoom"" $
(""$ %
SingletonClass""% 3
.""3 4
Instance""4 <
.""< =
GamertagUser""= I
,""I J
SingletonClass""K Y
.""Y Z
Instance""Z b
.""b c
IdRoom""c i
)""i j
;""j k

clientRoom## 
.## 
GetPlayersRoom## %
(##% &
SingletonClass##& 4
.##4 5
Instance##5 =
.##= >
GamertagUser##> J
,##J K
SingletonClass##L Z
.##Z [
Instance##[ c
.##c d
IdRoom##d j
)##j k
;##k l
}$$ 	
private&& 
void&& 

BackWindow&& 
(&&  
object&&  &
sender&&' -
,&&- . 
MouseButtonEventArgs&&/ C
e&&D E
)&&E F
{&&G H
ServiceReference'' 
.'' 
IRoom'' "
client''# )
=''* +
new'', /
ServiceReference''0 @
.''@ A

RoomClient''A K
(''K L
)''L M
;''M N
client(( 
.(( 
RemovePlayer(( 
(((  
SingletonClass((  .
.((. /
Instance((/ 7
.((7 8
GamertagUser((8 D
,((D E
SingletonClass((F T
.((T U
Instance((U ]
.((] ^
IdRoom((^ d
)((d e
;((e f
UserMenu** 
userMenu** 
=** 
new**  #
UserMenu**$ ,
(**, -
)**- .
;**. /
userMenu++ 
.++ 
Show++ 
(++ 
)++ 
;++ 
this,, 
.,, 
Close,, 
(,, 
),, 
;,, 
}-- 	
public// 
void// 
GetFriendsCallback// &
(//& '

Dictionary//' 1
<//1 2
string//2 8
,//8 9
Tuple//: ?
<//? @
string//@ F
,//F G
bool//H L
>//L M
>//M N
stateFriend//O Z
)//Z [
{//\ ]
try00 
{00 
Application11 
.11 
Current11 #
.11# $

Dispatcher11$ .
.11. /
Invoke11/ 5
(115 6
(116 7
)117 8
=>119 ;
{11< =
var22 
friendsList22 #
=22$ %
new22& )
List22* .
<22. /
Friend22/ 5
>225 6
(226 7
)227 8
;228 9
foreach44 
(44 
var44  
friend44! '
in44( *
stateFriend44+ 6
)446 7
{448 9
var55 
friendPlayer55 (
=55) *
new55+ .
Friend55/ 5
{556 7
Gamertag66 $
=66% &
friend66' -
.66- .
Key66. 1
,661 2
PathFile77 $
=77% &
$"77' )
$str77) ;
{77; <
friend77< B
.77B C
Value77C H
.77H I
Item177I N
}77N O
"77O P
,77P Q
IsOnline88 $
=88% &
friend88' -
.88- .
Value88. 3
.883 4
Item2884 9
,889 :
}99 
;99 
friendPlayer:: $
.::$ %
imageAddFriend::% 3
.::3 4

Visibility::4 >
=::? @

Visibility::A K
.::K L
Visible::L S
;::S T
if;; 
(;; 
!;; 
friend;; #
.;;# $
Value;;$ )
.;;) *
Item2;;* /
);;/ 0
{;;1 2
friendPlayer<< (
.<<( )
imageAddFriend<<) 7
.<<7 8
	IsEnabled<<8 A
=<<B C
false<<D I
;<<I J
}== 
friendsList>> #
.>># $
Add>>$ '
(>>' (
friendPlayer>>( 4
)>>4 5
;>>5 6
}?? 
if@@ 
(@@ 
FindName@@  
(@@  !
$str@@! 2
)@@2 3
is@@4 6
FriendListLobby@@7 F
friendListControl@@G X
)@@X Y
{@@Z [
friendListControlAA )
.AA) *
FriendsListLobbyAA* :
=AA; <
friendsListAA= H
;AAH I
friendListControlBB )
.BB) *

VisibilityBB* 4
=BB5 6

VisibilityBB7 A
.BBA B
VisibleBBB I
;BBI J
}CC 
}DD 
)DD 
;DD 
}EE 
catchEE 
(EE "
CommunicationExceptionEE +
exEE, .
)EE. /
{EE0 1

MessageBoxFF 
.FF 
ShowFF 
(FF  
$"FF  "
$strFF" 9
{FF9 :
exFF: <
.FF< =
MessageFF= D
}FFD E
"FFE F
)FFF G
;FFG H
}GG 
}HH 	
publicJJ 
voidJJ "
GetPlayersRoomCallbackJJ *
(JJ* +
stringJJ+ 1
[JJ1 2
]JJ2 3
playersInRoomJJ4 A
)JJA B
{JJC D
tryKK 
{KK 
ServiceReferenceLL  
.LL  !
IUserLL! &

clientUserLL' 1
=LL2 3
newLL4 7
ServiceReferenceLL8 H
.LLH I

UserClientLLI S
(LLS T
)LLT U
;LLU V
ApplicationMM 
.MM 
CurrentMM #
.MM# $

DispatcherMM$ .
.MM. /
InvokeMM/ 5
(MM5 6
(MM6 7
)MM7 8
=>MM9 ;
{MM< =
varNN 
playersListNN #
=NN$ %
newNN& ) 
ObservableCollectionNN* >
<NN> ?
FriendReportNN? K
>NNK L
(NNL M
)NNM N
;NNN O
foreachOO 
(OO 
varOO  
playerOO! '
inOO( *
playersInRoomOO+ 8
)OO8 9
{OO: ;
boolPP 
isReportPP %
=PP& '
truePP( ,
;PP, -
stringQQ 
gamertagQQ '
=QQ( )
playerQQ* 0
;QQ0 1
ifRR 
(RR 
playerRR "
.RR" #
EqualsRR# )
(RR) *
SingletonClassRR* 8
.RR8 9
InstanceRR9 A
.RRA B
GamertagUserRRB N
)RRN O
)RRO P
{RRQ R
isReportSS $
=SS% &
falseSS' ,
;SS, -
gamertagTT $
=TT% &

PropertiesTT' 1
.TT1 2
	ResourcesTT2 ;
.TT; <
TuTT< >
;TT> ?
}UU 
varVV 

playerRoomVV &
=VV' (
newVV) ,
FriendReportVV- 9
{VV: ;
GamertagWW $
=WW% &
gamertagWW' /
,WW/ 0
PathFileXX $
=XX% &

clientUserXX' 1
.XX1 2
GetPlayerImageXX2 @
(XX@ A
playerXXA G
)XXG H
,XXH I
IsReportYY $
=YY% &
isReportYY' /
,YY/ 0
}ZZ 
;ZZ 
playersList[[ #
.[[# $
Add[[$ '
([[' (

playerRoom[[( 2
)[[2 3
;[[3 4
}\\ 
if]] 
(]] 
FindName]]  
(]]  !
$str]]! 4
)]]4 5
is]]6 8
FriendListLobby]]9 H
playerListControl]]I Z
)]]Z [
{]]\ ]
playerListControl^^ )
.^^) *"
FriendsListLobbyReport^^* @
=^^A B
playersList^^C N
;^^N O
playerListControl__ )
.__) *

Visibility__* 4
=__5 6

Visibility__7 A
.__A B
Visible__B I
;__I J
}`` 
}aa 
)aa 
;aa 
}bb 
catchbb 
(bb "
CommunicationExceptionbb +
exbb, .
)bb. /
{bb0 1

MessageBoxcc 
.cc 
Showcc 
(cc  
$"cc  "
$strcc" 9
{cc9 :
excc: <
.cc< =
Messagecc= D
}ccD E
"ccE F
)ccF G
;ccG H
}dd 
}ee 	
privategg 
voidgg 
UpdateFriendListgg %
(gg% &
objectgg& ,
sendergg- 3
,gg3 4 
MouseButtonEventArgsgg5 I
eggJ K
)ggK L
{ggM N
ServiceReferencehh 
.hh 
IUsersManagerhh *
clientUsershh+ 6
=hh7 8
newhh9 <
ServiceReferencehh= M
.hhM N
UsersManagerClienthhN `
(hh` a
newhha d
InstanceContexthhe t
(hht u
thishhu y
)hhy z
)hhz {
;hh{ |
clientUsersii 
.ii 

GetFriendsii "
(ii" #
SingletonClassii# 1
.ii1 2
Instanceii2 :
.ii: ;
GamertagUserii; G
)iiG H
;iiH I
}jj 	
privatell 
voidll 
AddGuestll 
(ll 
objectll $
senderll% +
,ll+ , 
MouseButtonEventArgsll- A
ellB C
)llC D
{llE F
stringmm 
idRoommm 
=mm 
SingletonClassmm *
.mm* +
Instancemm+ 3
.mm3 4
IdRoommm4 :
;mm: ;

MessageBoxnn 
.nn 
Shownn 
(nn 

Propertiesnn &
.nn& '
	Resourcesnn' 0
.nn0 1
CompartaCodigonn1 ?
+nn@ A
$strnnB F
+nnG H
idRoomnnI O
)nnO P
;nnP Q
}oo 	
publicqq 
voidqq 
SendToBoardCallbackqq '
(qq' (
)qq( )
{qq* +
Boardrr 
boardrr 
=rr 
newrr 
Boardrr #
(rr# $
)rr$ %
;rr% &
boardss 
.ss 
Showss 
(ss 
)ss 
;ss 
thistt 
.tt 
Closett 
(tt 
)tt 
;tt 
}uu 	
privateww 
voidww 
	StartGameww 
(ww 
objectww %
senderww& ,
,ww, -
RoutedEventArgsww. =
eww> ?
)ww? @
{wwA B
ServiceReferencexx 
.xx 
IBoardxx #
boardxx$ )
=xx* +
newxx, /
ServiceReferencexx0 @
.xx@ A
BoardClientxxA L
(xxL M
newxxM P
InstanceContextxxQ `
(xx` a
thisxxa e
)xxe f
)xxf g
;xxg h
ifyy 
(yy 
boardyy 
.yy 
ValidateBoardRoomyy '
(yy' (
SingletonClassyy( 6
.yy6 7
Instanceyy7 ?
.yy? @
IdRoomyy@ F
)yyF G
)yyG H
{yyI J
ServiceReferencezz  
.zz  !
IBoardzz! '
clientzz( .
=zz/ 0
newzz1 4
ServiceReferencezz5 E
.zzE F
BoardClientzzF Q
(zzQ R
newzzR U
InstanceContextzzV e
(zze f
thiszzf j
)zzj k
)zzk l
;zzl m
client{{ 
.{{ 
SendToBoard{{ "
({{" #
SingletonClass{{# 1
.{{1 2
Instance{{2 :
.{{: ;
IdRoom{{; A
){{A B
;{{B C
}|| 
else|| 
{|| 

MessageBox}} 
.}} 
Show}} 
(}}  
$str}}  =
)}}= >
;}}> ?
}~~ 
} 	
}
ÄÄ 
}ÅÅ g
OC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\View\Login.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
View  $
{% &
public 

partial 
class 
Login 
:  
Window! '
,' (
ServiceReference) 9
.9 : 
IUserSessionCallback: N
{O P
public 
Login 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
} 	
private   
void   
Register   
(   
object   $
sender  % +
,  + , 
MouseButtonEventArgs  - A
e  B C
)  C D
{  E F
RegisterUser!! 
registerUser!! %
=!!& '
new!!( +
RegisterUser!!, 8
(!!8 9
)!!9 :
;!!: ;
registerUser"" 
."" 
Show"" 
("" 
)"" 
;""  
this## 
.## 
Close## 
(## 
)## 
;## 
}$$ 	
private&& 
void&& 
ForgotPassword&& #
(&&# $
object&&$ *
sender&&+ 1
,&&1 2 
MouseButtonEventArgs&&3 G
e&&H I
)&&I J
{&&K L
ChangePassword'' 
changePassword'' )
=''* +
new'', /
ChangePassword''0 >
(''> ?
)''? @
;''@ A
changePassword(( 
.(( 
Show(( 
(((  
)((  !
;((! "
this)) 
.)) 
Close)) 
()) 
))) 
;)) 
}** 	
private,, 
void,, 
SignIn,, 
(,, 
object,, "
sender,,# )
,,,) *
RoutedEventArgs,,+ :
e,,; <
),,< =
{,,> ?
SingletonClass-- 
.-- 
Instance-- #
.--# $
GamertagUser--$ 0
=--1 2
textBoxGamertag--3 B
.--B C
Text--C G
;--G H
	UserModel.. 
	userModel.. 
=..  !
new.." %
	UserModel..& /
{..0 1
Gamertag// 
=// 
textBoxGamertag// *
.//* +
Text//+ /
,/// 0
Password00 
=00 
passwordBoxPassword00 .
.00. /
Password00/ 7
}11 
;11 
try22 
{22 
ServiceReference33  
.33  !
IUser33! &
client33' -
=33. /
new330 3
ServiceReference334 D
.33D E

UserClient33E O
(33O P
)33P Q
;33Q R
int44 
validationUser44 "
=44# $
client44% +
.44+ ,
ValidateUser44, 8
(448 9
	userModel449 B
)44B C
;44C D
if66 
(66 
string66 
.66 
IsNullOrEmpty66 (
(66( )
textBoxGamertag66) 8
.668 9
Text669 =
)66= >
||66? A
string66B H
.66H I
IsNullOrEmpty66I V
(66V W
passwordBoxPassword66W j
.66j k
Password66k s
)66s t
)66t u
{66v w

MessageBox77 
.77 
Show77 #
(77# $

Properties77$ .
.77. /
	Resources77/ 8
.778 9
CamposVacios779 E
)77E F
;77F G
}88 
else88 
{88 
if99 
(99 
validationUser99 &
>99' (
$num99) *
)99* +
{99, -
ServiceReference:: (
.::( )
IUser::) .
user::/ 3
=::4 5
new::6 9
ServiceReference::: J
.::J K

UserClient::K U
(::U V
)::V W
;::W X
int;; 
idUser;; "
=;;# $
user;;% )
.;;) *
GetId;;* /
(;;/ 0
textBoxGamertag;;0 ?
.;;? @
Text;;@ D
);;D E
;;;E F
SingletonClass<< &
.<<& '
Instance<<' /
.<</ 0
IdUser<<0 6
=<<7 8
idUser<<9 ?
;<<? @
ServiceReference== (
.==( )
IUserSession==) 5
userSession==6 A
===B C
new==D G
ServiceReference==H X
.==X Y
UserSessionClient==Y j
(==j k
new==k n
InstanceContext==o ~
(==~ 
this	== É
)
==É Ñ
)
==Ñ Ö
;
==Ö Ü
userSession>> #
.>># $
GetSessionPlayer>>$ 4
(>>4 5
idUser>>5 ;
)>>; <
;>>< =
UserMenu??  
userMenu??! )
=??* +
new??, /
UserMenu??0 8
(??8 9
)??9 :
;??: ;
userMenu@@  
.@@  !
Show@@! %
(@@% &
)@@& '
;@@' (
thisAA 
.AA 
CloseAA "
(AA" #
)AA# $
;AA$ %
}BB 
elseBB 
{BB 

MessageBoxCC "
.CC" #
ShowCC# '
(CC' (

PropertiesCC( 2
.CC2 3
	ResourcesCC3 <
.CC< =
UsuarioInvalidoCC= L
)CCL M
;CCM N
}DD 
}EE 
}FF 
catchFF 
(FF "
CommunicationExceptionFF +
exFF, .
)FF. /
{FF0 1

MessageBoxGG 
.GG 
ShowGG 
(GG  
$"GG  "
$strGG" 9
{GG9 :
exGG: <
.GG< =
MessageGG= D
}GGD E
"GGE F
)GGF G
;GGG H
}HH 
}II 	
privateKK 
voidKK 
LanguajeSelectedKK %
(KK% &
objectKK& ,
senderKK- 3
,KK3 4%
SelectionChangedEventArgsKK5 N
eKKO P
)KKP Q
{KKR S
ifLL 
(LL 
cbBoxLanguajeLL 
.LL 
SelectedItemLL *
isLL+ -
ComboBoxItemLL. :
selectedItemLL; G
)LLG H
{LLI J
stringMM 
selectedLanguageMM '
=MM( )
selectedItemMM* 6
.MM6 7
TagMM7 :
.MM: ;
ToStringMM; C
(MMC D
)MMD E
;MME F
ThreadNN 
.NN 
CurrentThreadNN $
.NN$ %
CurrentCultureNN% 3
=NN4 5
newNN6 9
CultureInfoNN: E
(NNE F
selectedLanguageNNF V
)NNV W
;NNW X
ThreadOO 
.OO 
CurrentThreadOO $
.OO$ %
CurrentUICultureOO% 5
=OO6 7
newOO8 ;
CultureInfoOO< G
(OOG H
selectedLanguageOOH X
)OOX Y
;OOY Z
UpdateUIResourcesQQ !
(QQ! "
)QQ" #
;QQ# $
ChangeLanguajeRR 
.RR 
OnLanguajeChangedRR 0
(RR0 1
)RR1 2
;RR2 3
}SS 
}TT 	
privateVV 
voidVV 
UpdateUIResourcesVV &
(VV& '
)VV' (
{VV) *
textBlockLoginWW 
.WW 
TextWW 
=WW  !

PropertiesWW" ,
.WW, -
	ResourcesWW- 6
.WW6 7
InicioSesionWW7 C
;WWC D
textBlockNameXX 
.XX 
TextXX 
=XX  

PropertiesXX! +
.XX+ ,
	ResourcesXX, 5
.XX5 6
NombreXX6 <
;XX< =
textBlockPasswordYY 
.YY 
TextYY "
=YY# $

PropertiesYY% /
.YY/ 0
	ResourcesYY0 9
.YY9 :
Contrase√±aYY: D
;YYD E#
textBlockForgotPasswordZZ #
.ZZ# $
TextZZ$ (
=ZZ) *

PropertiesZZ+ 5
.ZZ5 6
	ResourcesZZ6 ?
.ZZ? @
OlvideContrase√±aZZ@ P
;ZZP Q
buttonLogin[[ 
.[[ 
Content[[ 
=[[  !

Properties[[" ,
.[[, -
	Resources[[- 6
.[[6 7
IniciarSesion[[7 D
;[[D E
textBlockNewInGame\\ 
.\\ 
Text\\ #
=\\$ %

Properties\\& 0
.\\0 1
	Resources\\1 :
.\\: ;

NuevoJuego\\; E
;\\E F
textBlockRegister]] 
.]] 
Text]] "
=]]# $

Properties]]% /
.]]/ 0
	Resources]]0 9
.]]9 :
Registrarse]]: E
;]]E F
textBlockLanguaje^^ 
.^^ 
Text^^ "
=^^# $

Properties^^% /
.^^/ 0
	Resources^^0 9
.^^9 :
Idioma^^: @
;^^@ A
textBlockPlayGuest__ 
.__ 
Text__ #
=__$ %

Properties__& 0
.__0 1
	Resources__1 :
.__: ;
JugarInvitado__; H
;__H I
textBlockGuest`` 
.`` 
Text`` 
=``  !

Properties``" ,
.``, -
	Resources``- 6
.``6 7
IngreseCodigo``7 D
;``D E
buttonPlayGuestaa 
.aa 
Contentaa #
=aa$ %

Propertiesaa& 0
.aa0 1
	Resourcesaa1 :
.aa: ;
Validaraa; B
;aaB C
}bb 	
privatedd 
voiddd 
LoginPasswordBoxdd %
(dd% &
objectdd& ,
senderdd- 3
,dd3 4
KeyEventArgsdd5 A
eddB C
)ddC D
{ddE F
ifee 
(ee 
eee 
.ee 
Keyee 
==ee 
Keyee 
.ee 
Enteree "
)ee" #
{ee$ %
SignInff 
(ff 
senderff 
,ff 
eff  
)ff  !
;ff! "
}gg 
}hh 	
privatejj 
voidjj 
LoginGamertagBoxjj %
(jj% &
objectjj& ,
senderjj- 3
,jj3 4
KeyEventArgsjj5 A
ejjB C
)jjC D
{jjE F
ifkk 
(kk 
ekk 
.kk 
Keykk 
==kk 
Keykk 
.kk 
Enterkk "
)kk" #
{kk$ %
SignInll 
(ll 
senderll 
,ll 
ell  
)ll  !
;ll! "
}mm 
}nn 	
publicpp 
voidpp $
GetSessionPlayerCallbackpp ,
(pp, -
)pp- .
{pp/ 0
}rr 	
privatett 
voidtt 
PlayAsGuesttt  
(tt  !
objecttt! '
sendertt( .
,tt. / 
MouseButtonEventArgstt0 D
ettE F
)ttF G
{ttH I
ifuu 
(uu 
borderGuestuu 
.uu 

Visibilityuu &
==uu' )

Visibilityuu* 4
.uu4 5
Hiddenuu5 ;
)uu; <
{uu= >
borderGuestvv 
.vv 

Visibilityvv &
=vv' (

Visibilityvv) 3
.vv3 4
Visiblevv4 ;
;vv; <
}ww 
elseww 
{ww 
borderGuestxx 
.xx 

Visibilityxx &
=xx' (

Visibilityxx) 3
.xx3 4
Hiddenxx4 :
;xx: ;
}yy 
}zz 	
private|| 
void|| 
ValidateRoom|| !
(||! "
object||" (
sender||) /
,||/ 0
RoutedEventArgs||1 @
e||A B
)||B C
{||D E
ServiceReference}} 
.}} 
IRoom}} "

clientRoom}}# -
=}}. /
new}}0 3
ServiceReference}}4 D
.}}D E

RoomClient}}E O
(}}O P
)}}P Q
;}}Q R
string~~ 
enterIdRoom~~ 
=~~  
textBoxPlayGuest~~! 1
.~~1 2
Text~~2 6
;~~6 7
if 
( 

clientRoom 
. 
ValidateRoom '
(' (
enterIdRoom( 3
)3 4
==5 7
$num8 9
)9 :
{; <
SingletonClass
ÄÄ 
.
ÄÄ 
Instance
ÄÄ '
.
ÄÄ' (
IdRoom
ÄÄ( .
=
ÄÄ/ 0
enterIdRoom
ÄÄ1 <
;
ÄÄ< =
SingletonClass
ÅÅ 
.
ÅÅ 
Instance
ÅÅ '
.
ÅÅ' (
GamertagUser
ÅÅ( 4
=
ÅÅ5 6
$str
ÅÅ7 A
;
ÅÅA B
Lobby
ÇÇ 
lobby
ÇÇ 
=
ÇÇ 
new
ÇÇ !
Lobby
ÇÇ" '
(
ÇÇ' (
)
ÇÇ( )
;
ÇÇ) *
lobby
ÉÉ 
.
ÉÉ 
Show
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
this
ÑÑ 
.
ÑÑ 
Close
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ 
}
ÖÖ 
else
ÖÖ 
{
ÖÖ 

MessageBox
ÜÜ 
.
ÜÜ 
Show
ÜÜ 
(
ÜÜ  

Properties
ÜÜ  *
.
ÜÜ* +
	Resources
ÜÜ+ 4
.
ÜÜ4 5
CodigoInvalido
ÜÜ5 C
)
ÜÜC D
;
ÜÜD E
}
áá 
}
àà 	
}
ââ 
}ää à
dC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\UserControls\NotificationFriend.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
UserControls  ,
{- .
public 

partial 
class 
NotificationFriend +
:, -
UserControl. 9
,9 :"
INotifyPropertyChanged; Q
{R S
public 
NotificationFriend !
(! "
)" #
{$ %
InitializeComponent 
(  
)  !
;! "
this 
. 
DataContext 
= 
this #
;# $
}   	
private"" 
string"" 
	_gamertag""  
;""  !
private## 
string## 
	_pathFile##  
;##  !
private$$ 
string$$ 
_textMessage$$ #
;$$# $
private%% 
string%% 
_idRoom%% 
;%% 
public'' 
string'' 
Gamertag'' 
{''  
get(( 
{(( 
return(( 
	_gamertag(( "
;((" #
}(($ %
set)) 
{)) 
if** 
(** 
	_gamertag** 
!=**  
value**! &
)**& '
{**( )
	_gamertag++ 
=++ 
value++  %
;++% &
OnPropertyChanged,, %
(,,% &
nameof,,& ,
(,,, -
Gamertag,,- 5
),,5 6
),,6 7
;,,7 8
}-- 
}.. 
}// 	
public11 
string11 
PathFile11 
{11  
get22 
{22 
return22 
	_pathFile22 "
;22" #
}22$ %
set33 
{33 
if44 
(44 
	_pathFile44 
!=44  
value44! &
)44& '
{44( )
	_pathFile55 
=55 
value55  %
;55% &
OnPropertyChanged66 %
(66% &
nameof66& ,
(66, -
PathFile66- 5
)665 6
)666 7
;667 8
}77 
}88 
}99 	
public;; 
string;; 
TextMessage;; !
{;;" #
get<< 
{<< 
return<< 
_textMessage<< %
;<<% &
}<<' (
set== 
{== 
if>> 
(>> 
_textMessage>>  
!=>>! #
value>>$ )
)>>) *
{>>+ ,
_textMessage??  
=??! "
value??# (
;??( )
OnPropertyChanged@@ %
(@@% &
nameof@@& ,
(@@, -
TextMessage@@- 8
)@@8 9
)@@9 :
;@@: ;
}AA 
}BB 
}CC 	
publicEE 
stringEE 
IdRoomEE 
{EE 
getFF 
{FF 
returnFF 
_idRoomFF  
;FF  !
}FF" #
setGG 
{GG 
ifHH 
(HH 
_idRoomHH 
!=HH 
valueHH $
)HH$ %
{HH& '
_idRoomII 
=II 
valueII #
;II# $
OnPropertyChangedJJ %
(JJ% &
nameofJJ& ,
(JJ, -
IdRoomJJ- 3
)JJ3 4
)JJ4 5
;JJ5 6
}KK 
}LL 
}MM 	
privateOO 
voidOO 
AcceptOO 
(OO 
objectOO "
senderOO# )
,OO) * 
MouseButtonEventArgsOO+ ?
eOO@ A
)OOA B
{OOC D
ifPP 
(PP 
textBlockMessagePP  
.PP  !
TextPP! %
.PP% &
EqualsPP& ,
(PP, -

PropertiesPP- 7
.PP7 8
	ResourcesPP8 A
.PPA B
	SolicitudPPB K
)PPK L
)PPL M
{PPN O
AcceptFriendRequestQQ #
(QQ# $
)QQ$ %
;QQ% &
}RR 
elseRR 
ifRR 
(RR 
textBlockMessageRR '
.RR' (
TextRR( ,
.RR, -
EqualsRR- 3
(RR3 4

PropertiesRR4 >
.RR> ?
	ResourcesRR? H
.RRH I

InvitacionRRI S
)RRS T
)RRT U
{RRV W"
AcceptFriendInvitationSS &
(SS& '
)SS' (
;SS( )
}TT 
}UU 	
privateWW 
voidWW 
AcceptFriendRequestWW (
(WW( )
)WW) *
{WW+ ,
tryXX 
{XX 
ServiceReferenceYY  
.YY  !
IFriendshipYY! ,
clientFriendshipYY- =
=YY> ?
newYY@ C
ServiceReferenceYYD T
.YYT U
FriendshipClientYYU e
(YYe f
)YYf g
;YYg h
ServiceReferenceZZ  
.ZZ  !
IUserZZ! &

clientUserZZ' 1
=ZZ2 3
newZZ4 7
ServiceReferenceZZ8 H
.ZZH I

UserClientZZI S
(ZZS T
)ZZT U
;ZZU V
string\\ "
gamertagFriendSelected\\ -
=\\. /
this\\0 4
.\\4 5
Gamertag\\5 =
;\\= >
int]] 
idFriend]] 
=]] 

clientUser]] )
.]]) *
GetId]]* /
(]]/ 0"
gamertagFriendSelected]]0 F
)]]F G
;]]G H
FriendshipModel__ 

friendship__  *
=__+ ,
new__- 0
FriendshipModel__1 @
(__@ A
)__A B
{__C D
IdUser`` 
=`` 
SingletonClass`` +
.``+ ,
Instance``, 4
.``4 5
IdUser``5 ;
,``; <
IdFriendaa 
=aa 
idFriendaa '
,aa' (
RequestStatusbb !
=bb" # 
StatusOfNotificationbb$ 8
.bb8 9
Acceptedbb9 A
.bbA B
ToStringbbB J
(bbJ K
)bbK L
,bbL M
TypeNotificationcc $
=cc% &
Notificationcc' 3
.cc3 4
FriendRequestcc4 A
.ccA B
ToStringccB J
(ccJ K
)ccK L
}dd 
;dd 
ifff 
(ff 
clientFriendshipff $
.ff$ %!
ValidateFriendRequestff% :
(ff: ;
SingletonClassff; I
.ffI J
InstanceffJ R
.ffR S
IdUserffS Y
,ffY Z
idFriendff[ c
,ffc d 
StatusOfNotificationffe y
.ffy z
Pending	ffz Å
.
ffÅ Ç
ToString
ffÇ ä
(
ffä ã
)
ffã å
)
ffå ç
>
ffé è
$num
ffê ë
)
ffë í
{
ffì î
clientFriendshipgg $
.gg$ %
UpdateFriendPlayergg% 7
(gg7 8
SingletonClassgg8 F
.ggF G
InstanceggG O
.ggO P
IdUserggP V
,ggV W
idFriendggX `
,gg` a 
StatusOfNotificationggb v
.ggv w
Acceptedggw 
.	gg Ä
ToString
ggÄ à
(
ggà â
)
ggâ ä
)
ggä ã
;
ggã å
clientFriendshiphh $
.hh$ %
UpdateFriendPlayerhh% 7
(hh7 8
idFriendhh8 @
,hh@ A
SingletonClasshhB P
.hhP Q
InstancehhQ Y
.hhY Z
IdUserhhZ `
,hh` a 
StatusOfNotificationhhb v
.hhv w
Acceptedhhw 
.	hh Ä
ToString
hhÄ à
(
hhà â
)
hhâ ä
)
hhä ã
;
hhã å
}ii 
elseii 
{ii 
clientFriendshipjj $
.jj$ %
UpdateFriendPlayerjj% 7
(jj7 8
idFriendjj8 @
,jj@ A
SingletonClassjjB P
.jjP Q
InstancejjQ Y
.jjY Z
IdUserjjZ `
,jj` a 
StatusOfNotificationjjb v
.jjv w
Acceptedjjw 
.	jj Ä
ToString
jjÄ à
(
jjà â
)
jjâ ä
)
jjä ã
;
jjã å
clientFriendshipkk $
.kk$ %
AddFriendPlayerkk% 4
(kk4 5

friendshipkk5 ?
)kk? @
;kk@ A
}ll 

MessageBoxmm 
.mm 
Showmm 
(mm  

Propertiesmm  *
.mm* +
	Resourcesmm+ 4
.mm4 5
SolicitudAceptadamm5 F
+mmG H
$strmmI L
+mmM N"
gamertagFriendSelectedmmO e
)mme f
;mmf g
textBlockAddnn 
.nn 
	IsEnablednn &
=nn' (
falsenn) .
;nn. /
textBlockRejectoo 
.oo  
	IsEnabledoo  )
=oo* +
falseoo, 1
;oo1 2
}pp 
catchpp 
(pp "
CommunicationExceptionpp +
expp, .
)pp. /
{pp0 1

MessageBoxqq 
.qq 
Showqq 
(qq  
$"qq  "
$strqq" 9
{qq9 :
exqq: <
.qq< =
Messageqq= D
}qqD E
"qqE F
)qqF G
;qqG H
}rr 
}ss 	
privateuu 
voiduu "
AcceptFriendInvitationuu +
(uu+ ,
)uu, -
{uu. /
ServiceReferencevv 
.vv 
IRoomvv "

clientRoomvv# -
=vv. /
newvv0 3
ServiceReferencevv4 D
.vvD E

RoomClientvvE O
(vvO P
)vvP Q
;vvQ R
intxx 
resultxx 
=xx 

clientRoomxx #
.xx# $
ValidateRoomxx$ 0
(xx0 1
SingletonClassxx1 ?
.xx? @
Instancexx@ H
.xxH I
IdRoomxxI O
)xxO P
;xxP Q
ifyy 
(yy 
resultyy 
==yy 
$numyy 
)yy 
{yy "
RejectFriendInvitationzz &
(zz& '
)zz' (
;zz( )
Lobby{{ 
lobby{{ 
={{ 
new{{ !
Lobby{{" '
({{' (
){{( )
;{{) *
lobby|| 
.|| 
Show|| 
(|| 
)|| 
;|| 
Window}} 
.}} 
	GetWindow}}  
(}}  !
this}}! %
)}}% &
.}}& '
Close}}' ,
(}}, -
)}}- .
;}}. /
}~~ 
else~~ 
{~~ "
RejectFriendInvitation &
(& '
)' (
;( )

MessageBox
ÄÄ 
.
ÄÄ 
Show
ÄÄ 
(
ÄÄ  
$str
ÄÄ  6
)
ÄÄ6 7
;
ÄÄ7 8
}
ÅÅ 
}
ÇÇ 	
private
ÑÑ 
void
ÑÑ 
Reject
ÑÑ 
(
ÑÑ 
object
ÑÑ "
sender
ÑÑ# )
,
ÑÑ) *"
MouseButtonEventArgs
ÑÑ+ ?
e
ÑÑ@ A
)
ÑÑA B
{
ÑÑC D
if
ÖÖ 
(
ÖÖ 
textBlockMessage
ÖÖ  
.
ÖÖ  !
Text
ÖÖ! %
.
ÖÖ% &
Equals
ÖÖ& ,
(
ÖÖ, -

Properties
ÖÖ- 7
.
ÖÖ7 8
	Resources
ÖÖ8 A
.
ÖÖA B
	Solicitud
ÖÖB K
)
ÖÖK L
)
ÖÖL M
{
ÖÖN O!
RejectFriendRequest
ÜÜ #
(
ÜÜ# $
)
ÜÜ$ %
;
ÜÜ% &
}
áá 
else
áá 
if
áá 
(
áá 
textBlockMessage
áá '
.
áá' (
Text
áá( ,
.
áá, -
Equals
áá- 3
(
áá3 4

Properties
áá4 >
.
áá> ?
	Resources
áá? H
.
ááH I

Invitacion
ááI S
)
ááS T
)
ááT U
{
ááV W$
RejectFriendInvitation
àà &
(
àà& '
)
àà' (
;
àà( )
}
ââ 
}
ää 	
private
åå 
void
åå !
RejectFriendRequest
åå (
(
åå( )
)
åå) *
{
åå+ ,
try
çç 
{
çç 
ServiceReference
éé  
.
éé  !
IUser
éé! &

clientUser
éé' 1
=
éé2 3
new
éé4 7
ServiceReference
éé8 H
.
ééH I

UserClient
ééI S
(
ééS T
)
ééT U
;
ééU V
ServiceReference
èè  
.
èè  !
IFriendship
èè! ,
clientFriendship
èè- =
=
èè> ?
new
èè@ C
ServiceReference
èèD T
.
èèT U
FriendshipClient
èèU e
(
èèe f
)
èèf g
;
èèg h
string
ëë $
gamertagFriendSelected
ëë -
=
ëë. /
this
ëë0 4
.
ëë4 5
Gamertag
ëë5 =
;
ëë= >
int
íí 
idFriend
íí 
=
íí 

clientUser
íí )
.
íí) *
GetId
íí* /
(
íí/ 0$
gamertagFriendSelected
íí0 F
)
ííF G
;
ííG H
FriendshipModel
îî 
friendshipModel
îî  /
=
îî0 1
new
îî2 5
FriendshipModel
îî6 E
{
îîF G
IdUser
ïï 
=
ïï 
idFriend
ïï %
,
ïï% &
IdFriend
ññ 
=
ññ 
SingletonClass
ññ -
.
ññ- .
Instance
ññ. 6
.
ññ6 7
IdUser
ññ7 =
,
ññ= >
TypeNotification
óó $
=
óó% &
Notification
óó' 3
.
óó3 4
FriendRequest
óó4 A
.
óóA B
ToString
óóB J
(
óóJ K
)
óóK L
}
òò 
;
òò 
clientFriendship
öö  
.
öö  ! 
DeleteFriendPlayer
öö! 3
(
öö3 4
friendshipModel
öö4 C
)
ööC D
;
ööD E
textBlockAdd
õõ 
.
õõ 
	IsEnabled
õõ &
=
õõ' (
false
õõ) .
;
õõ. /
textBlockReject
úú 
.
úú  
	IsEnabled
úú  )
=
úú* +
false
úú, 1
;
úú1 2
}
ùù 
catch
ùù 
(
ùù $
CommunicationException
ùù +
ex
ùù, .
)
ùù. /
{
ùù0 1

MessageBox
ûû 
.
ûû 
Show
ûû 
(
ûû  
$"
ûû  "
$str
ûû" 9
{
ûû9 :
ex
ûû: <
.
ûû< =
Message
ûû= D
}
ûûD E
"
ûûE F
)
ûûF G
;
ûûG H
}
üü 
}
†† 	
private
¢¢ 
void
¢¢ $
RejectFriendInvitation
¢¢ +
(
¢¢+ ,
)
¢¢, -
{
¢¢. /
try
££ 
{
££ 
ServiceReference
§§  
.
§§  !
IUser
§§! &

clientUser
§§' 1
=
§§2 3
new
§§4 7
ServiceReference
§§8 H
.
§§H I

UserClient
§§I S
(
§§S T
)
§§T U
;
§§U V
ServiceReference
••  
.
••  !
IFriendship
••! ,
clientFriendship
••- =
=
••> ?
new
••@ C
ServiceReference
••D T
.
••T U
FriendshipClient
••U e
(
••e f
)
••f g
;
••g h
string
ßß $
gamertagFriendSelected
ßß -
=
ßß. /
this
ßß0 4
.
ßß4 5
Gamertag
ßß5 =
;
ßß= >
int
®® 
idFriend
®® 
=
®® 

clientUser
®® )
.
®®) *
GetId
®®* /
(
®®/ 0$
gamertagFriendSelected
®®0 F
)
®®F G
;
®®G H
FriendshipModel
™™ 
friendshipModel
™™  /
=
™™0 1
new
™™2 5
FriendshipModel
™™6 E
{
™™F G
IdUser
´´ 
=
´´ 
idFriend
´´ %
,
´´% &
IdFriend
¨¨ 
=
¨¨ 
SingletonClass
¨¨ -
.
¨¨- .
Instance
¨¨. 6
.
¨¨6 7
IdUser
¨¨7 =
,
¨¨= >
TypeNotification
≠≠ $
=
≠≠% &
Notification
≠≠' 3
.
≠≠3 4
GameRequest
≠≠4 ?
.
≠≠? @
ToString
≠≠@ H
(
≠≠H I
)
≠≠I J
}
ÆÆ 
;
ÆÆ 
clientFriendship
∞∞  
.
∞∞  ! 
DeleteFriendPlayer
∞∞! 3
(
∞∞3 4
friendshipModel
∞∞4 C
)
∞∞C D
;
∞∞D E
textBlockAdd
±± 
.
±± 
	IsEnabled
±± &
=
±±' (
false
±±) .
;
±±. /
textBlockReject
≤≤ 
.
≤≤  
	IsEnabled
≤≤  )
=
≤≤* +
false
≤≤, 1
;
≤≤1 2
}
≥≥ 
catch
≥≥ 
(
≥≥ $
CommunicationException
≥≥ +
ex
≥≥, .
)
≥≥. /
{
≥≥0 1

MessageBox
¥¥ 
.
¥¥ 
Show
¥¥ 
(
¥¥  
$"
¥¥  "
$str
¥¥" 9
{
¥¥9 :
ex
¥¥: <
.
¥¥< =
Message
¥¥= D
}
¥¥D E
"
¥¥E F
)
¥¥F G
;
¥¥G H
}
µµ 
}
∂∂ 	
public
∏∏ 
event
∏∏ )
PropertyChangedEventHandler
∏∏ 0
PropertyChanged
∏∏1 @
;
∏∏@ A
	protected
∫∫ 
virtual
∫∫ 
void
∫∫ 
OnPropertyChanged
∫∫ 0
(
∫∫0 1
string
∫∫1 7
propertyName
∫∫8 D
)
∫∫D E
{
∫∫F G
PropertyChanged
ªª 
?
ªª 
.
ªª 
Invoke
ªª #
(
ªª# $
this
ªª$ (
,
ªª( )
new
ªª* -&
PropertyChangedEventArgs
ªª. F
(
ªªF G
propertyName
ªªG S
)
ªªS T
)
ªªT U
;
ªªU V
}
ºº 	
}
ΩΩ 
}ææ ï	
cC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\UserControls\NotificationsList.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
UserControls  ,
{- .
public 

partial 
class 
NotificationsList *
:+ ,
UserControl- 8
{9 :
public 
NotificationsList  
(  !
)! "
{# $
InitializeComponent 
(  
)  !
;! "
} 	
public 
List 
< 
NotificationFriend &
>& '
NotificationFriends( ;
{< =
get 
{ 
return 
( 
List 
< 
NotificationFriend 1
>1 2
)2 3
listOfNotifications3 F
.F G
ItemsSourceG R
;R S
}T U
set 
{ 
listOfNotifications %
.% &
ItemsSource& 1
=2 3
value4 9
;9 :
}; <
} 	
} 
} ô!
QC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\View\Options.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
View  $
{% &
public 

partial 
class 
Options  
:! "
Window# )
{* +
public 
Options 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
ChangeLanguaje 
. 
LanguajeChanged *
+=+ -'
LanguajeChangedEventHandler. I
;I J
string 
gamertag 
= 
SingletonClass ,
., -
Instance- 5
.5 6
GamertagUser6 B
;B C
textBlockGamertag 
. 
Text "
=# $
gamertag% -
;- .
imageProfile 
. 
Source 
=  !
App" %
.% &
DisplayImageProfile& 9
(9 :
): ;
;; <
} 	
private!! 
void!! 

BackWindow!! 
(!!  
object!!  &
sender!!' -
,!!- . 
MouseButtonEventArgs!!/ C
e!!D E
)!!E F
{!!G H
UserMenu"" 
userMenu"" 
="" 
new""  #
UserMenu""$ ,
("", -
)""- .
;"". /
userMenu## 
.## 
Show## 
(## 
)## 
;## 
this$$ 
.$$ 
Close$$ 
($$ 
)$$ 
;$$ 
}%% 	
private'' 
void'' 
LanguajeSelected'' %
(''% &
object''& ,
sender''- 3
,''3 4%
SelectionChangedEventArgs''5 N
e''O P
)''P Q
{''R S
if(( 
((( 
comboBoxLanguaje((  
.((  !
SelectedItem((! -
is((. 0
ComboBoxItem((1 =
selectedItem((> J
)((J K
{((L M
string)) 
selectedLanguage)) '
=))( )
selectedItem))* 6
.))6 7
Tag))7 :
.)): ;
ToString)); C
())C D
)))D E
;))E F
Thread** 
.** 
CurrentThread** $
.**$ %
CurrentCulture**% 3
=**4 5
new**6 9
CultureInfo**: E
(**E F
selectedLanguage**F V
)**V W
;**W X
Thread++ 
.++ 
CurrentThread++ $
.++$ %
CurrentUICulture++% 5
=++6 7
new++8 ;
CultureInfo++< G
(++G H
selectedLanguage++H X
)++X Y
;++Y Z
UpdateUIResources-- !
(--! "
)--" #
;--# $
ChangeLanguaje.. 
... 
OnLanguajeChanged.. 0
(..0 1
)..1 2
;..2 3
}// 
}00 	
private22 
void22 '
LanguajeChangedEventHandler22 0
(220 1
object221 7
sender228 >
,22> ?
	EventArgs22@ I
e22J K
)22K L
{22M N
UpdateUIResources33 
(33 
)33 
;33  
}44 	
private66 
void66 
UpdateUIResources66 &
(66& '
)66' (
{66) *
textBlockOptions77 
.77 
Text77 !
=77" #

Properties77$ .
.77. /
	Resources77/ 8
.778 9
Opciones779 A
;77A B
textBlockSound88 
.88 
Text88 
=88  !

Properties88" ,
.88, -
	Resources88- 6
.886 7
Sonido887 =
;88= >
textBlockLanguaje99 
.99 
Text99 "
=99# $

Properties99% /
.99/ 0
	Resources990 9
.999 :
Idioma99: @
;99@ A
textBlockVisual:: 
.:: 
Text::  
=::! "

Properties::# -
.::- .
	Resources::. 7
.::7 8
AyudaVisual::8 C
;::C D
};; 	
}<< 
}== »b
VC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\View\RegisterUser.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
View  $
{% &
public 

partial 
class 
RegisterUser %
:& '
Window( .
{/ 0
private 
List 
< 
BitmapImage  
>  !

ImagesList" ,
;, -
private 
const 
string 
USER_STATUS (
=) *
$str+ .
;. /
public 
RegisterUser 
( 
) 
{ 
InitializeComponent   
(    
)    !
;  ! "
ChangeLanguaje!! 
.!! 
LanguajeChanged!! *
+=!!+ -'
LanguajeChangedEventHandler!!. I
;!!I J
ChangeImage"" 
("" 
)"" 
;"" 
	UserModel$$ 
	userModel$$ 
=$$  !
new$$" %
	UserModel$$& /
($$/ 0
)$$0 1
;$$1 2
this%% 
.%% 
DataContext%% 
=%% 
	userModel%% (
;%%( )
}&& 	
private(( 
void(( 
ChangeImage((  
(((  !
)((! "
{((# $

ImagesList)) 
=)) 
new)) 
List)) !
<))! "
BitmapImage))" -
>))- .
()). /
)))/ 0
;))0 1

ImagesList** 
.** 
Add** 
(** 
new** 
BitmapImage** *
(*** +
new**+ .
Uri**/ 2
(**2 3
$str**3 U
,**U V
UriKind**W ^
.**^ _
Relative**_ g
)**g h
)**h i
)**i j
;**j k

ImagesList++ 
.++ 
Add++ 
(++ 
new++ 
BitmapImage++ *
(++* +
new+++ .
Uri++/ 2
(++2 3
$str++3 V
,++V W
UriKind++X _
.++_ `
Relative++` h
)++h i
)++i j
)++j k
;++k l

ImagesList,, 
.,, 
Add,, 
(,, 
new,, 
BitmapImage,, *
(,,* +
new,,+ .
Uri,,/ 2
(,,2 3
$str,,3 Q
,,,Q R
UriKind,,S Z
.,,Z [
Relative,,[ c
),,c d
),,d e
),,e f
;,,f g

ImagesList-- 
.-- 
Add-- 
(-- 
new-- 
BitmapImage-- *
(--* +
new--+ .
Uri--/ 2
(--2 3
$str--3 Y
,--Y Z
UriKind--[ b
.--b c
Relative--c k
)--k l
)--l m
)--m n
;--n o

ImagesList.. 
... 
Add.. 
(.. 
new.. 
BitmapImage.. *
(..* +
new..+ .
Uri../ 2
(..2 3
$str..3 R
,..R S
UriKind..T [
...[ \
Relative..\ d
)..d e
)..e f
)..f g
;..g h

ImagesList// 
.// 
Add// 
(// 
new// 
BitmapImage// *
(//* +
new//+ .
Uri/// 2
(//2 3
$str//3 R
,//R S
UriKind//T [
.//[ \
Relative//\ d
)//d e
)//e f
)//f g
;//g h
imageDisplay11 
.11 
Source11 
=11  !

ImagesList11" ,
[11, -
$num11- .
]11. /
;11/ 0
sliderImage33 
.33 
ValueChanged33 $
+=33% '#
ImageSliderValueChanged33( ?
;33? @
}44 	
private66 
void66 
Register66 
(66 
object66 $
sender66% +
,66+ ,
RoutedEventArgs66- <
e66= >
)66> ?
{66@ A
	UserModel77 
	userModel77 
=77  !
new77" %
	UserModel77& /
{770 1
Gamertag88 
=88 
textBoxName88 &
.88& '
Text88' +
,88+ ,
Email99 
=99 
textBoxEmail99 $
.99$ %
Text99% )
,99) *
Password:: 
=:: 
textBoxPassword:: *
.::* +
Text::+ /
,::/ 0
PlayerStatus;; 
=;; 
USER_STATUS;; *
,;;* +
ImageProfile<< 
=<< 
GetImageValue<< ,
(<<, -
)<<- .
,<<. /
}== 
;== 
try>> 
{>> 
ServiceReference??  
.??  !
IUser??! &
client??' -
=??. /
new??0 3
ServiceReference??4 D
.??D E

UserClient??E O
(??O P
)??P Q
;??Q R
int@@  
resultAddUserAccount@@ (
=@@) *
client@@+ 1
.@@1 2
AddUserAccount@@2 @
(@@@ A
	userModel@@A J
)@@J K
;@@K L
intAA 
resultAddUserGameAA %
=AA& '
clientAA( .
.AA. /
AddUserGameAA/ :
(AA: ;
	userModelAA; D
)AAD E
;AAE F
ifCC 
(CC 
resultAddUserGameCC %
>CC& '
$numCC( )
&&CC* , 
resultAddUserAccountCC- A
>CCB C
$numCCD E
)CCE F
{CCG H

MessageBoxDD 
.DD 
ShowDD #
(DD# $

PropertiesDD$ .
.DD. /
	ResourcesDD/ 8
.DD8 9
UsuarioAgregadoDD9 H
)DDH I
;DDI J
LoginEE 
loginEE 
=EE  !
newEE" %
LoginEE& +
(EE+ ,
)EE, -
;EE- .
loginFF 
.FF 
ShowFF 
(FF 
)FF  
;FF  !
thisGG 
.GG 
CloseGG 
(GG 
)GG  
;GG  !
}HH 
elseHH 
{HH 

MessageBoxII 
.II 
ShowII #
(II# $

PropertiesII$ .
.II. /
	ResourcesII/ 8
.II8 9
UsuarioNoAgregadoII9 J
)IIJ K
;IIK L
}JJ 
}KK 
catchKK 
(KK "
CommunicationExceptionKK +
exKK, .
)KK. /
{KK0 1

MessageBoxLL 
.LL 
ShowLL 
(LL  
$"LL  "
$strLL" 9
{LL9 :
exLL: <
.LL< =
MessageLL= D
}LLD E
"LLE F
)LLF G
;LLG H
}MM 
}NN 	
privatePP 
voidPP '
LanguajeChangedEventHandlerPP 0
(PP0 1
objectPP1 7
senderPP8 >
,PP> ?
	EventArgsPP@ I
ePPJ K
)PPK L
{PPM N
UpdateUIResourcesQQ 
(QQ 
)QQ 
;QQ  
}RR 	
privateTT 
voidTT 
UpdateUIResourcesTT &
(TT& '
)TT' (
{TT) *!
textBlockRegisterUserUU !
.UU! "
TextUU" &
=UU' (

PropertiesUU) 3
.UU3 4
	ResourcesUU4 =
.UU= >
RegistroUsuarioUU> M
;UUM N
textBlockNameVV 
.VV 
TextVV 
=VV  

PropertiesVV! +
.VV+ ,
	ResourcesVV, 5
.VV5 6
NombreVV6 <
;VV< =
textBlockEmailWW 
.WW 
TextWW 
=WW  !

PropertiesWW" ,
.WW, -
	ResourcesWW- 6
.WW6 7
CorreoWW7 =
;WW= >
textBlockPasswordXX 
.XX 
TextXX "
=XX# $

PropertiesXX% /
.XX/ 0
	ResourcesXX0 9
.XX9 :
Contrase√±aXX: D
;XXD E
buttonRegisterYY 
.YY 
ContentYY "
=YY# $

PropertiesYY% /
.YY/ 0
	ResourcesYY0 9
.YY9 :
RegistrarseYY: E
;YYE F
}ZZ 	
private\\ 
void\\ 

BackWindow\\ 
(\\  
object\\  &
sender\\' -
,\\- .
RoutedEventArgs\\/ >
e\\? @
)\\@ A
{\\B C
Login]] 
login]] 
=]] 
new]] 
Login]] #
(]]# $
)]]$ %
;]]% &
login^^ 
.^^ 
Show^^ 
(^^ 
)^^ 
;^^ 
this__ 
.__ 
Close__ 
(__ 
)__ 
;__ 
}`` 	
privatebb 
voidbb #
ImageSliderValueChangedbb ,
(bb, -
objectbb- 3
senderbb4 :
,bb: ;*
RoutedPropertyChangedEventArgsbb< Z
<bbZ [
doublebb[ a
>bba b
ebbc d
)bbd e
{bbf g
intcc 
selectedIndexcc 
=cc 
(cc  !
intcc! $
)cc$ %
sliderImagecc% 0
.cc0 1
Valuecc1 6
;cc6 7
ifdd 
(dd 
selectedIndexdd 
>=dd  
$numdd! "
&&dd# %
selectedIndexdd& 3
<dd4 5

ImagesListdd6 @
.dd@ A
CountddA F
)ddF G
{ddH I
imageDisplayee 
.ee 
Sourceee #
=ee$ %

ImagesListee& 0
[ee0 1
selectedIndexee1 >
]ee> ?
;ee? @
}ff 
}gg 	
privatehh 
stringhh 
GetImageValuehh $
(hh$ %
)hh% &
{hh' (
intii 
selectedIndexii 
=ii 
(ii  !
intii! $
)ii$ %
sliderImageii% 0
.ii0 1
Valueii1 6
;ii6 7
stringjj 

valueImagejj 
=jj 
$strjj  "
;jj" #
ifkk 
(kk 
selectedIndexkk 
>=kk  
$numkk! "
&&kk# %
selectedIndexkk& 3
<kk4 5

ImagesListkk6 @
.kk@ A
CountkkA F
)kkF G
{kkH I
stringll 
	imagePathll  
=ll! "

ImagesListll# -
[ll- .
selectedIndexll. ;
]ll; <
.ll< =
ToStringll= E
(llE F
)llF G
;llG H

valueImagemm 
=mm 
Pathmm !
.mm! "
GetFileNamemm" -
(mm- .
	imagePathmm. 7
)mm7 8
;mm8 9
}nn 
returnoo 

valueImageoo 
;oo 
}pp 	
privaterr 
voidrr 
ValidateTextBoxrr $
(rr$ %
objectrr% +
senderrr, 2
,rr2 3 
TextChangedEventArgsrr4 H
errI J
)rrJ K
{rrL M
boolss 
isNameValidss 
=ss 
!ss  

Validationss  *
.ss* +
GetHasErrorss+ 6
(ss6 7
textBoxNamess7 B
)ssB C
&&ssD F
!ssG H
stringssH N
.ssN O
IsNullOrEmptyssO \
(ss\ ]
textBoxNamess] h
.ssh i
Textssi m
)ssm n
;ssn o
booltt 
isEmailValidtt 
=tt 
!tt  !

Validationtt! +
.tt+ ,
GetHasErrortt, 7
(tt7 8
textBoxEmailtt8 D
)ttD E
&&ttF H
!ttI J
stringttJ P
.ttP Q
IsNullOrEmptyttQ ^
(tt^ _
textBoxNamett_ j
.ttj k
Textttk o
)tto p
;ttp q
booluu 
isPasswordValiduu  
=uu! "
!uu# $

Validationuu$ .
.uu. /
GetHasErroruu/ :
(uu: ;
textBoxPassworduu; J
)uuJ K
&&uuL N
!uuO P
stringuuP V
.uuV W
IsNullOrEmptyuuW d
(uud e
textBoxPassworduue t
.uut u
Textuuu y
)uuy z
;uuz {
ifvv 
(vv 
isNameValidvv 
&&vv 
isEmailValidvv +
&&vv- /
isPasswordValidvv0 ?
)vv? @
{vvA B
buttonRegisterww 
.ww 
	IsEnabledww (
=ww) *
trueww+ /
;ww/ 0
}xx 
elsexx 
{xx 
buttonRegisteryy 
.yy 
	IsEnabledyy (
=yy) *
falseyy+ 0
;yy0 1
}zz 
}{{ 	
}|| 
}}} ∫P
VC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\View\ReportPlayer.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
View  $
{% &
public 

partial 
class 
ReportPlayer %
:& '
Window( .
{/ 0
public 
ReportPlayer 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
string 
gamertag 
= 
SingletonClass ,
., -
Instance- 5
.5 6"
GamertagPlayerSelected6 L
;L M
textBlockGamertag 
. 
Text "
=# $
gamertag% -
;- .
imageProfile 
. 
Source 
=  !
App" %
.% &
DisplayImageProfile& 9
(9 :
): ;
;; <
} 	
private 
void 

BackWindow 
(  
object  &
sender' -
,- . 
MouseButtonEventArgs/ C
eD E
)E F
{G H
this 
. 
Close 
( 
) 
; 
}   	
private"" 
int"" 
Evaluate"" 
("" 
int""  
idUser""! '
,""' (
string"") /
reason""0 6
,""6 7
DateTime""8 @
currentDate""A L
,""L M
DateTime""N V
endDate""W ^
)""^ _
{""` a
int## 
result## 
;## 
try$$ 
{$$ 
ServiceReference%%  
.%%  !
IReport%%! (
clientReport%%) 5
=%%6 7
new%%8 ;
ServiceReference%%< L
.%%L M
ReportClient%%M Y
(%%Y Z
)%%Z [
;%%[ \
ReportModel&& 
reportModel&& '
=&&( )
new&&* -
ReportModel&&. 9
{&&: ;
IdUser'' 
='' 
idUser'' #
,''# $
Reason(( 
=(( 
reason(( #
,((# $
CurrentDate)) 
=))  !
currentDate))" -
,))- .
EndDate** 
=** 
endDate** %
}++ 
;++ 
int-- 

numReports-- 
=--  
clientReport--! -
.--- .
GetNumReports--. ;
(--; <
SingletonClass--< J
.--J K
Instance--K S
.--S T
IdFriend--T \
)--\ ]
;--] ^
if.. 
(.. 

numReports.. 
>..  
$num..! "
).." #
{..$ %
result// 
=// 
clientReport// )
.//) *
UpdateReport//* 6
(//6 7
reportModel//7 B
)//B C
;//C D
}00 
else00 
{00 
result11 
=11 
clientReport11 )
.11) *
	AddReport11* 3
(113 4
reportModel114 ?
)11? @
;11@ A
}22 
return33 
result33 
;33 
}44 
catch44 
(44 "
CommunicationException44 +
ex44, .
)44. /
{440 1

MessageBox55 
.55 
Show55 
(55  
ex55  "
.55" #
Message55# *
)55* +
;55+ ,
return66 
-66 
$num66 
;66 
}77 
}88 	
private:: 
string:: 
GetTextCheckBox:: &
(::& '
)::' (
{::) *
string;; 
reason;; 
=;; 
$str;; 
;;; 
if<< 
(<< 
checkBoxAbandonment<< #
.<<# $
	IsChecked<<$ -
==<<. 0
true<<1 5
)<<5 6
{<<7 8
reason== 
=== 
checkBoxAbandonment== ,
.==, -
Content==- 4
.==4 5
ToString==5 =
(=== >
)==> ?
;==? @
}>> 
else>> 
{>> 
if?? 
(?? 
checkBoxBadLanguaje?? '
.??' (
	IsChecked??( 1
==??2 4
true??5 9
)??9 :
{??; <
reason@@ 
=@@ 
checkBoxBadLanguaje@@ 0
.@@0 1
Content@@1 8
.@@8 9
ToString@@9 A
(@@A B
)@@B C
;@@C D
}AA 
elseAA 
{AA 
ifBB 
(BB 
checkBoxInactivityBB *
.BB* +
	IsCheckedBB+ 4
==BB5 7
trueBB8 <
)BB< =
{BB> ?
reasonCC 
=CC  
checkBoxInactivityCC! 3
.CC3 4
ContentCC4 ;
.CC; <
ToStringCC< D
(CCD E
)CCE F
;CCF G
}DD 
}EE 
}FF 
returnGG 
reasonGG 
;GG 
}HH 	
privateJJ 
voidJJ 
CheckBoxSelectedJJ %
(JJ% &
objectJJ& ,
senderJJ- 3
,JJ3 4
RoutedEventArgsJJ5 D
eJJE F
)JJF G
{JJH I
ifKK 
(KK 
checkBoxAbandonmentKK #
.KK# $
	IsCheckedKK$ -
==KK. 0
trueKK1 5
)KK5 6
{KK7 8
checkBoxBadLanguajeLL #
.LL# $
	IsEnabledLL$ -
=LL. /
falseLL0 5
;LL5 6
checkBoxInactivityMM "
.MM" #
	IsEnabledMM# ,
=MM- .
falseMM/ 4
;MM4 5
	btnReportNN 
.NN 
	IsEnabledNN #
=NN$ %
trueNN& *
;NN* +
}OO 
elseOO 
{OO 
ifPP 
(PP 
checkBoxBadLanguajePP '
.PP' (
	IsCheckedPP( 1
==PP2 4
truePP5 9
)PP9 :
{PP; <
checkBoxAbandonmentQQ '
.QQ' (
	IsEnabledQQ( 1
=QQ2 3
falseQQ4 9
;QQ9 :
checkBoxInactivityRR &
.RR& '
	IsEnabledRR' 0
=RR1 2
falseRR3 8
;RR8 9
	btnReportSS 
.SS 
	IsEnabledSS '
=SS( )
trueSS* .
;SS. /
}TT 
elseTT 
{TT 
ifUU 
(UU 
checkBoxInactivityUU *
.UU* +
	IsCheckedUU+ 4
==UU5 7
trueUU8 <
)UU< =
{UU> ?
checkBoxAbandonmentVV +
.VV+ ,
	IsEnabledVV, 5
=VV6 7
falseVV8 =
;VV= >
checkBoxBadLanguajeWW +
.WW+ ,
	IsEnabledWW, 5
=WW6 7
falseWW8 =
;WW= >
	btnReportXX !
.XX! "
	IsEnabledXX" +
=XX, -
trueXX. 2
;XX2 3
}YY 
}ZZ 
}[[ 
}\\ 	
private^^ 
void^^ 
CheckBoxUnchecked^^ &
(^^& '
object^^' -
sender^^. 4
,^^4 5
RoutedEventArgs^^6 E
e^^F G
)^^G H
{^^I J
	btnReport__ 
.__ 
	IsEnabled__ 
=__  !
false__" '
;__' (
checkBoxBadLanguaje`` 
.``  
	IsEnabled``  )
=``* +
true``, 0
;``0 1
checkBoxInactivityaa 
.aa 
	IsEnabledaa (
=aa) *
trueaa+ /
;aa/ 0
checkBoxAbandonmentbb 
.bb  
	IsEnabledbb  )
=bb* +
truebb, 0
;bb0 1
}cc 	
privateee 
voidee 
Reportee 
(ee 
objectee "
senderee# )
,ee) *
RoutedEventArgsee+ :
eee; <
)ee< =
{ee> ?
tryff 
{ff 
ServiceReferencegg  
.gg  !
IUsergg! &
clientgg' -
=gg. /
newgg0 3
ServiceReferencegg4 D
.ggD E

UserClientggE O
(ggO P
)ggP Q
;ggQ R
SingletonClasshh 
.hh 
Instancehh '
.hh' (
IdFriendhh( 0
=hh1 2
clienthh3 9
.hh9 :
GetIdhh: ?
(hh? @
SingletonClasshh@ N
.hhN O
InstancehhO W
.hhW X"
GamertagPlayerSelectedhhX n
)hhn o
;hho p
intii 
idUserii 
=ii 
SingletonClassii +
.ii+ ,
Instanceii, 4
.ii4 5
IdFriendii5 =
;ii= >
stringjj 
reasonjj 
=jj 
GetTextCheckBoxjj  /
(jj/ 0
)jj0 1
;jj1 2
DateTimekk 
dateCurrentkk $
=kk% &
DateTimekk' /
.kk/ 0
Nowkk0 3
;kk3 4
DateTimell 

dateFinishll #
=ll$ %
dateCurrentll& 1
.ll1 2
AddDaysll2 9
(ll9 :
$numll: ;
)ll; <
;ll< =
intmm 
resultmm 
=mm 
Evaluatemm %
(mm% &
idUsermm& ,
,mm, -
reasonmm. 4
,mm4 5
dateCurrentmm6 A
,mmA B

dateFinishmmC M
)mmM N
;mmN O
ifnn 
(nn 
resultnn 
==nn 
$numnn 
)nn  
{nn! "

MessageBoxoo 
.oo 
Showoo #
(oo# $

Propertiesoo$ .
.oo. /
	Resourcesoo/ 8
.oo8 9
ReporteExitosooo9 G
)ooG H
;ooH I
}pp 
elsepp 
{pp 

MessageBoxqq 
.qq 
Showqq #
(qq# $

Propertiesqq$ .
.qq. /
	Resourcesqq/ 8
.qq8 9
ErrorReporteqq9 E
)qqE F
;qqF G
}rr 
}ss 
catchss 
(ss "
CommunicationExceptionss +
exss, .
)ss. /
{ss0 1

MessageBoxtt 
.tt 
Showtt 
(tt  
extt  "
.tt" #
Messagett# *
)tt* +
;tt+ ,
}uu 
}vv 	
}ww 
}xx ö
TC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\View\Statistics.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
View  $
{% &
public 

partial 
class 

Statistics #
:$ %
Window& ,
{- .
public 

Statistics 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
ChangeLanguaje 
. 
LanguajeChanged *
+=+ -'
LanguajeChangedEventHandler. I
;I J
string 
gamertag 
= 
SingletonClass ,
., -
Instance- 5
.5 6
GamertagUser6 B
;B C
textBlockGamertag 
. 
Text "
=# $
gamertag% -
;- .
imageProfile 
. 
Source 
=  !
App" %
.% &
DisplayImageProfile& 9
(9 :
): ;
;; <
} 	
private 
void 

BackWindow 
(  
object  &
sender' -
,- . 
MouseButtonEventArgs/ C
eD E
)E F
{G H
UserMenu   
userMenu   
=   
new    #
UserMenu  $ ,
(  , -
)  - .
;  . /
userMenu!! 
.!! 
Show!! 
(!! 
)!! 
;!! 
this"" 
."" 
Close"" 
("" 
)"" 
;"" 
}## 	
private%% 
void%% '
LanguajeChangedEventHandler%% 0
(%%0 1
object%%1 7
sender%%8 >
,%%> ?
	EventArgs%%@ I
e%%J K
)%%K L
{%%M N
UpdateUIResources&& 
(&& 
)&& 
;&&  
}'' 	
private)) 
void)) 
UpdateUIResources)) &
())& '
)))' (
{))) *
textBlockStatistics** 
.**  
Text**  $
=**% &

Properties**' 1
.**1 2
	Resources**2 ;
.**; <
Estadisticas**< H
;**H I!
textBlockStartedGames++ !
.++! "
Text++" &
=++' (

Properties++) 3
.++3 4
	Resources++4 =
.++= >
JuegosComenzados++> N
;++N O
textBlockGamesWon,, 
.,, 
Text,, "
=,,# $

Properties,,% /
.,,/ 0
	Resources,,0 9
.,,9 :
JuegosGanados,,: G
;,,G H
textBlockVictorys-- 
.-- 
Text-- "
=--# $

Properties--% /
.--/ 0
	Resources--0 9
.--9 :
PorcentajeVictorias--: M
;--M N
}.. 	
}// 
}00 ÅÄ
RC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\View\UserMenu.xaml.cs
	namespace 	!
ChineseCheckersClient
 
.  
View  $
{% &
public 

partial 
class 
UserMenu !
:" #
Window$ *
,* +
ServiceReference, <
.< =&
IUserFriendRequestCallback= W
{X Y
private 
bool 
	isVisible 
=  
false! &
;& '
public 
UserMenu 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
ChangeLanguaje 
. 
LanguajeChanged *
+=+ -'
LanguajeChangedEventHandler. I
;I J
string   
gamertag   
=   
SingletonClass   ,
.  , -
Instance  - 5
.  5 6
GamertagUser  6 B
;  B C
textBlockGamertag!! 
.!! 
Text!! "
=!!# $
gamertag!!% -
;!!- .
imageProfile"" 
."" 
Source"" 
=""  !
App""" %
.""% &
DisplayImageProfile""& 9
(""9 :
)"": ;
;""; <
}## 	
private%% 
void%% 
Exit%% 
(%% 
object%%  
sender%%! '
,%%' (
RoutedEventArgs%%) 8
e%%9 :
)%%: ;
{%%< =
try&& 
{&& 
ServiceReference''  
.''  !
IUser''! &
client''' -
=''. /
new''0 3
ServiceReference''4 D
.''D E

UserClient''E O
(''O P
)''P Q
;''Q R
client(( 
.(( 

LogoutUser(( !
(((! "
SingletonClass((" 0
.((0 1
Instance((1 9
.((9 :
IdUser((: @
)((@ A
;((A B
App)) 
.)) 
Current)) 
.)) 
Shutdown)) $
())$ %
)))% &
;))& '
}** 
catch** 
(** "
CommunicationException** +
ex**, .
)**. /
{**0 1

MessageBox++ 
.++ 
Show++ 
(++  
$"++  "
$str++" 9
{++9 :
ex++: <
.++< =
Message++= D
}++D E
"++E F
)++F G
;++G H
},, 
}-- 	
private// 
void// 

Statistics// 
(//  
object//  &
sender//' -
,//- .
RoutedEventArgs/// >
e//? @
)//@ A
{//B C

Statistics00 

statistics00 !
=00" #
new00$ '

Statistics00( 2
(002 3
)003 4
;004 5

statistics11 
.11 
Show11 
(11 
)11 
;11 
this22 
.22 
Close22 
(22 
)22 
;22 
}33 	
private55 
void55 
Options55 
(55 
object55 #
sender55$ *
,55* +
RoutedEventArgs55, ;
e55< =
)55= >
{55? @
Options66 
options66 
=66 
new66 !
Options66" )
(66) *
)66* +
;66+ ,
options77 
.77 
Show77 
(77 
)77 
;77 
this88 
.88 
Close88 
(88 
)88 
;88 
}99 	
private;; 
void;; '
LanguajeChangedEventHandler;; 0
(;;0 1
object;;1 7
sender;;8 >
,;;> ?
	EventArgs;;@ I
e;;J K
);;K L
{;;M N
UpdateUIResources<< 
(<< 
)<< 
;<<  
}== 	
private?? 
void?? 
UpdateUIResources?? &
(??& '
)??' (
{??) *

buttonPlay@@ 
.@@ 
Content@@ 
=@@  

Properties@@! +
.@@+ ,
	Resources@@, 5
.@@5 6
Jugar@@6 ;
;@@; <
buttonOptionsAA 
.AA 
ContentAA !
=AA" #

PropertiesAA$ .
.AA. /
	ResourcesAA/ 8
.AA8 9
OpcionesAA9 A
;AAA B
buttonStatisticsBB 
.BB 
ContentBB $
=BB% &

PropertiesBB' 1
.BB1 2
	ResourcesBB2 ;
.BB; <
EstadisticasBB< H
;BBH I
buttonLeaveCC 
.CC 
ContentCC 
=CC  !

PropertiesCC" ,
.CC, -
	ResourcesCC- 6
.CC6 7
SalirCC7 <
;CC< =

buttonEditDD 
.DD 
ContentDD 
=DD  

PropertiesDD! +
.DD+ ,
	ResourcesDD, 5
.DD5 6
EditarDD6 <
;DD< =
buttonLogOutEE 
.EE 
ContentEE  
=EE! "

PropertiesEE# -
.EE- .
	ResourcesEE. 7
.EE7 8
CerrarSesionEE8 D
;EED E
}FF 	
privateHH 
voidHH 

OpenEditorHH 
(HH  
objectHH  &
senderHH' -
,HH- . 
MouseButtonEventArgsHH/ C
eHHD E
)HHE F
{HHG H
	isVisibleII 
=II 
!II 
	isVisibleII "
;II" #
stackPanelEditorJJ 
.JJ 

VisibilityJJ '
=JJ( )
	isVisibleJJ* 3
?JJ4 5

VisibilityJJ6 @
.JJ@ A
VisibleJJA H
:JJI J

VisibilityJJK U
.JJU V
	CollapsedJJV _
;JJ_ `
borderEditorKK 
.KK 

VisibilityKK #
=KK$ %
	isVisibleKK& /
?KK0 1

VisibilityKK2 <
.KK< =
VisibleKK= D
:KKE F

VisibilityKKG Q
.KKQ R
	CollapsedKKR [
;KK[ \
}LL 	
privateNN 
voidNN 
LogOutNN 
(NN 
objectNN "
senderNN# )
,NN) *
RoutedEventArgsNN+ :
eNN; <
)NN< =
{NN> ?
tryOO 
{OO 
ServiceReferencePP  
.PP  !
IUserPP! &
clientPP' -
=PP. /
newPP0 3
ServiceReferencePP4 D
.PPD E

UserClientPPE O
(PPO P
)PPP Q
;PPQ R
clientQQ 
.QQ 

LogoutUserQQ !
(QQ! "
SingletonClassQQ" 0
.QQ0 1
InstanceQQ1 9
.QQ9 :
IdUserQQ: @
)QQ@ A
;QQA B
LoginRR 
loginRR 
=RR 
newRR !
LoginRR" '
(RR' (
)RR( )
;RR) *
loginSS 
.SS 
ShowSS 
(SS 
)SS 
;SS 
thisTT 
.TT 
CloseTT 
(TT 
)TT 
;TT 
}UU 
catchUU 
(UU "
CommunicationExceptionUU +
exUU, .
)UU. /
{UU0 1

MessageBoxVV 
.VV 
ShowVV 
(VV  
$"VV  "
$strVV" 9
{VV9 :
exVV: <
.VV< =
MessageVV= D
}VVD E
"VVE F
)VVF G
;VVG H
}WW 
}XX 	
privateZZ 
voidZZ 
PlayZZ 
(ZZ 
objectZZ  
senderZZ! '
,ZZ' (
RoutedEventArgsZZ) 8
eZZ9 :
)ZZ: ;
{ZZ< =
ServiceReference[[ 
.[[ 
IRoom[[ "

clientRoom[[# -
=[[. /
new[[0 3
ServiceReference[[4 D
.[[D E

RoomClient[[E O
([[O P
)[[P Q
;[[Q R
string\\ 
idRoom\\ 
=\\ 

clientRoom\\ &
.\\& '

CreateRoom\\' 1
(\\1 2
SingletonClass\\2 @
.\\@ A
Instance\\A I
.\\I J
GamertagUser\\J V
)\\V W
;\\W X
SingletonClass]] 
.]] 
Instance]] #
.]]# $
IdRoom]]$ *
=]]+ ,
idRoom]]- 3
;]]3 4
Lobby^^ 
lobby^^ 
=^^ 
new^^ 
Lobby^^ #
(^^# $
)^^$ %
;^^% &
lobby__ 
.__ 
Show__ 
(__ 
)__ 
;__ 
this`` 
.`` 
Close`` 
(`` 
)`` 
;`` 
}aa 	
privatecc 
voidcc 
EditProfilecc  
(cc  !
objectcc! '
sendercc( .
,cc. /
RoutedEventArgscc0 ?
ecc@ A
)ccA B
{ccC D
EditProfiledd 
editProfiledd #
=dd$ %
newdd& )
EditProfiledd* 5
(dd5 6
)dd6 7
;dd7 8
editProfileee 
.ee 
Showee 
(ee 
)ee 
;ee 
thisff 
.ff 
Closeff 
(ff 
)ff 
;ff 
}gg 	
privateii 
voidii $
ImageMouseLeftButtonDownii -
(ii- .
objectii. 4
senderii5 ;
,ii; < 
MouseButtonEventArgsii= Q
eiiR S
)iiS T
{iiU V
ifjj 
(jj 

friendListjj 
.jj 

Visibilityjj %
==jj& (

Visibilityjj) 3
.jj3 4
	Collapsedjj4 =
)jj= >
{jj? @

friendListkk 
.kk 

Visibilitykk %
=kk& '

Visibilitykk( 2
.kk2 3
Visiblekk3 :
;kk: ;
}ll 
elsell 
{ll 

friendListmm 
.mm 

Visibilitymm %
=mm& '

Visibilitymm( 2
.mm2 3
	Collapsedmm3 <
;mm< =
}nn 
}oo 	
privateqq 
voidqq  
ShowNotificationListqq )
(qq) *
objectqq* 0
senderqq1 7
,qq7 8 
MouseButtonEventArgsqq9 M
eqqN O
)qqO P
{qqQ R
ifrr 
(rr 
notificationListrr  
.rr  !

Visibilityrr! +
==rr, .

Visibilityrr/ 9
.rr9 :
	Collapsedrr: C
)rrC D
{rrE F
notificationListss  
.ss  !

Visibilityss! +
=ss, -

Visibilityss. 8
.ss8 9
Visibless9 @
;ss@ A
trytt 
{tt 
ServiceReferenceuu $
.uu$ %
IUserFriendRequestuu% 7
clientuu8 >
=uu? @
newuuA D
ServiceReferenceuuE U
.uuU V#
UserFriendRequestClientuuV m
(uum n
newuun q
InstanceContext	uur Å
(
uuÅ Ç
this
uuÇ Ü
)
uuÜ á
)
uuá à
;
uuà â
clientvv 
.vv 
GetFriendRequestvv +
(vv+ ,
SingletonClassvv, :
.vv: ;
Instancevv; C
.vvC D
IdUservvD J
)vvJ K
;vvK L
}ww 
catchww 
(ww "
CommunicationExceptionww /
exww0 2
)ww2 3
{ww4 5

MessageBoxxx 
.xx 
Showxx #
(xx# $
$"xx$ &
$strxx& =
{xx= >
exxx> @
.xx@ A
MessagexxA H
}xxH I
"xxI J
)xxJ K
;xxK L
}yy 
}zz 
elsezz 
{zz 
notificationList{{  
.{{  !

Visibility{{! +
={{, -

Visibility{{. 8
.{{8 9
	Collapsed{{9 B
;{{B C
}|| 
}}} 	
public 
void $
GetFriendRequestCallback ,
(, -

Dictionary- 7
<7 8
string8 >
,> ?
(@ A
stringA G
,G H
stringI O
,O P
stringQ W
)W X
>X Y
friendPlayerZ f
)f g
{h i
try
ÄÄ 
{
ÄÄ 
Application
ÅÅ 
.
ÅÅ 
Current
ÅÅ #
.
ÅÅ# $

Dispatcher
ÅÅ$ .
.
ÅÅ. /
Invoke
ÅÅ/ 5
(
ÅÅ5 6
(
ÅÅ6 7
)
ÅÅ7 8
=>
ÅÅ9 ;
{
ÅÅ< =
var
ÇÇ 
notification
ÇÇ $
=
ÇÇ% &
new
ÇÇ' *
List
ÇÇ+ /
<
ÇÇ/ 0 
NotificationFriend
ÇÇ0 B
>
ÇÇB C
(
ÇÇC D
)
ÇÇD E
;
ÇÇE F
foreach
ÉÉ 
(
ÉÉ 
var
ÉÉ  
friend
ÉÉ! '
in
ÉÉ( *
friendPlayer
ÉÉ+ 7
)
ÉÉ7 8
{
ÉÉ9 :
string
ÑÑ 
typeNotification
ÑÑ /
=
ÑÑ0 1
$str
ÑÑ2 4
;
ÑÑ4 5
if
ÖÖ 
(
ÖÖ 
friend
ÖÖ "
.
ÖÖ" #
Value
ÖÖ# (
.
ÖÖ( )
Item2
ÖÖ) .
.
ÖÖ. /
Equals
ÖÖ/ 5
(
ÖÖ5 6
Notification
ÖÖ6 B
.
ÖÖB C
FriendRequest
ÖÖC P
.
ÖÖP Q
ToString
ÖÖQ Y
(
ÖÖY Z
)
ÖÖZ [
)
ÖÖ[ \
)
ÖÖ\ ]
{
ÖÖ^ _
typeNotification
ÜÜ ,
=
ÜÜ- .

Properties
ÜÜ/ 9
.
ÜÜ9 :
	Resources
ÜÜ: C
.
ÜÜC D
	Solicitud
ÜÜD M
;
ÜÜM N
}
áá 
else
áá 
if
áá !
(
áá" #
friend
áá# )
.
áá) *
Value
áá* /
.
áá/ 0
Item2
áá0 5
.
áá5 6
Equals
áá6 <
(
áá< =
Notification
áá= I
.
ááI J
GameRequest
ááJ U
.
ááU V
ToString
ááV ^
(
áá^ _
)
áá_ `
)
áá` a
)
ááa b
{
áác d
typeNotification
àà ,
=
àà- .

Properties
àà/ 9
.
àà9 :
	Resources
àà: C
.
ààC D

Invitacion
ààD N
;
ààN O
}
ââ 
var
ãã  
friendNotification
ãã .
=
ãã/ 0
new
ãã1 4 
NotificationFriend
ãã5 G
{
ããH I
Gamertag
åå $
=
åå% &
friend
åå' -
.
åå- .
Key
åå. 1
,
åå1 2
PathFile
çç $
=
çç% &
$"
çç' )
$str
çç) ;
{
çç; <
friend
çç< B
.
ççB C
Value
ççC H
.
ççH I
Item1
ççI N
}
ççN O
"
ççO P
,
ççP Q
TextMessage
éé '
=
éé( )
typeNotification
éé* :
,
éé: ;
IdRoom
èè "
=
èè# $
friend
èè% +
.
èè+ ,
Value
èè, 1
.
èè1 2
Item3
èè2 7
,
èè7 8
}
êê 
;
êê 
SingletonClass
ëë &
.
ëë& '
Instance
ëë' /
.
ëë/ 0
IdRoom
ëë0 6
=
ëë7 8 
friendNotification
ëë9 K
.
ëëK L
IdRoom
ëëL R
;
ëëR S
notification
íí $
.
íí$ %
Add
íí% (
(
íí( ) 
friendNotification
íí) ;
)
íí; <
;
íí< =
}
ìì 
if
îî 
(
îî 
FindName
îî  
(
îî  !
$str
îî! 3
)
îî3 4
is
îî5 7
NotificationsList
îî8 I'
notificationFriendControl
îîJ c
)
îîc d
{
îîe f'
notificationFriendControl
ïï 1
.
ïï1 2!
NotificationFriends
ïï2 E
=
ïïF G
notification
ïïH T
;
ïïT U'
notificationFriendControl
ññ 1
.
ññ1 2

Visibility
ññ2 <
=
ññ= >

Visibility
ññ? I
.
ññI J
Visible
ññJ Q
;
ññQ R
}
óó 
}
òò 
)
òò 
;
òò 
}
ôô 
catch
ôô 
(
ôô $
CommunicationException
ôô +
ex
ôô, .
)
ôô. /
{
ôô0 1

MessageBox
öö 
.
öö 
Show
öö 
(
öö  
ex
öö  "
.
öö" #
Message
öö# *
)
öö* +
;
öö+ ,
}
õõ 
}
úú 	
}
ùù 
}ûû û
WC:\Users\alexs\Desktop\ChineseCheckers\ChineseCheckersClient\Properties\AssemblyInfo.cs
[

 
assembly

 	
:

	 

AssemblyTitle

 
(

 
$str

 0
)

0 1
]

1 2
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 2
)2 3
]3 4
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
["" 
assembly"" 	
:""	 

	ThemeInfo"" 
("" &
ResourceDictionaryLocation## 
.## 
None## #
,### $&
ResourceDictionaryLocation&& 
.&& 
SourceAssembly&& -
))) 
])) 
[66 
assembly66 	
:66	 

AssemblyVersion66 
(66 
$str66 $
)66$ %
]66% &
[77 
assembly77 	
:77	 

AssemblyFileVersion77 
(77 
$str77 (
)77( )
]77) *