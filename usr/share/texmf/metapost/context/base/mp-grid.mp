%D \module
%D   [       file=mp-grid.mp,
%D        version=2000.07.10,
%D          title=\CONTEXT\ \METAPOST\ graphics,
%D       subtitle=grid support,
%D         author=Hans Hagen,
%D           date=\currentdate,
%D      copyright={PRAGMA / Hans Hagen \& Ton Otten}]
%C
%C This module is part of the \CONTEXT\ macro||package and is
%C therefore copyrighted by \PRAGMA. See licen-en.pdf for
%C details.

%D Under construction.

if unknown context_tool :    input mp-tool ; fi ;
if   known context_grid : endinput         ; fi ;

boolean context_grid ; context_grid := true ;

string  fmt_separator  ; fmt_separator  := "@" ;
numeric fmt_precision  ; fmt_precision  := 3 ;
boolean fmt_initialize ; fmt_initialize := false ;
boolean fmt_zerocheck  ; fmt_zerocheck  := true ;

if unknown fmt_loaded : input mp-form ; fi ;

boolean fmt_pictures ; fmt_pictures := true ;

def  do_format = if fmt_pictures :  format else :  formatstr fi enddef ;
def do_mformat = if fmt_pictures : Mformat else : Mformatstr fi enddef ;

numeric grid_eps ; grid_eps = eps ;

def hlingrid (expr Min, Max, Step, Length, Width) text t =
  image ( for i=Min step Step until Max+grid_eps :
    draw (origin--(Width,0)) shifted (0,i*(Length/Max)) t ;
  endfor ; ) ;
enddef ;

def vlingrid (expr Min, Max, Step, Length, Height) text t =
  image ( for i=Min step Step until Max+grid_eps :
    draw (origin--(0,Height)) shifted (i*(Length/Max),0) t ;
  endfor ; ) ;
enddef ;

def hloggrid (expr Min, Max, Step, Length, Width) text t =
  image ( for i=max(Min,1) step Step until min(Max,10)+grid_eps :
    draw (origin--(Width,0)) shifted (0,Length*log(i)) t ;
  endfor ; ) ;
enddef ;

def vloggrid (expr Min, Max, Step, Length, Height) text t =
  image ( for i=max(Min,1) step Step until min(Max,10)+grid_eps :
    draw (origin--(0,Height)) shifted (Length*log(i),0) t ;
  endfor ; ) ;
enddef ;

vardef hlintext@#(expr Min, Max, Step, Length, Format) text t =
  image ( do_initialize_numbers ;
  for i=Min step Step until Max+grid_eps :
    draw textext@#(do_format(Format,i)) shifted (0,i*(Length/Max)) t ;
  endfor ; )
enddef ;

vardef vlintext@#(expr Min, Max, Step, Length, Format) text t =
  image ( do_initialize_numbers ;
  for i=Min step Step until Max+grid_eps :
    draw textext@#(do_format(Format,i)) shifted (i*(Length/Max),0) t ;
  endfor ; )
enddef ;

vardef hlogtext@#(expr Min, Max, Step, Length, Format) text t =
  image ( do_initialize_numbers ;
  for i=max(Min,1) step Step until min(Max,10)+grid_eps :
    draw textext@#(do_format(Format,i)) shifted (0,Length*log(i)) t ;
  endfor ; )
enddef ;

vardef vlogtext@#(expr Min, Max, Step, Length, Format) text t =
  image ( do_initialize_numbers ;
  for i=max(Min,1) step Step until min(Max,10)+grid_eps :
    draw textext@#(do_format(Format,i)) shifted (Length*log(i),0) t ;
  endfor ; )
enddef ;

vardef hlinlabel@#(expr Min, Max, Step, Length) text t =
  image (
  for i=Min step Step until Max+grid_eps :
    draw thelabel@#(decimal i,(0,i*(Length/Max))) t ;
  endfor ; )
enddef ;

vardef vlinlabel@#(expr Min, Max, Step, Length) text t =
  image (
  for i=Min step Step until Max+grid_eps :
    draw thelabel@#(decimal i,(i*(Length/Max),0)) t ;
  endfor ; )
enddef ;

boolean numbers_initialized ; numbers_initialized := false ;

def do_initialize_numbers =
  if not numbers_initialized :
    init_numbers ( textext.raw("$-$")          ,
                   textext.raw("$1$")          ,
                   textext.raw("${\times}10$") ,
                   textext.raw("${}^-$")       ,
                   textext.raw("${}^2$")       ) ;
    numbers_initialized := true ;
  fi ;
enddef ;

def initialize_numbers =
  numbers_initialized := false ; do_initialize_numbers ;
enddef ;

vardef linlog(expr xy) = (    xpart xy,  log(ypart xy)) enddef ;
vardef loglin(expr xy) = (log(xpart xy),     ypart xy)  enddef ;
vardef loglog(expr xy) = (log(xpart xy), log(ypart xy)) enddef ;
vardef linlin(expr xy) = (   (xpart xy),    (ypart xy)) enddef ;

vardef loglinpath primary p = processpath (p) (loglin) enddef ;
vardef linlogpath primary p = processpath (p) (linlog) enddef ;
vardef loglogpath primary p = processpath (p) (loglog) enddef ;
vardef linlinpath primary p = processpath (p) (linlin) enddef ;

def processpath (expr p) (text pp) =
  if path p :
    for i=0 upto length(p)-1 :
      (pp(point       i    of p)) .. controls
      (pp(postcontrol i    of p)) and
      (pp(precontrol (i+1) of p)) ..
    endfor
    if cycle p :
      cycle
    else :
      (pp(point length(p) of p))
    fi
  elseif pair p :
    (pp(p))
  else :
    p
  fi
enddef ;
