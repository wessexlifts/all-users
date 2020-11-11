;;;   Alt + F6 Insert Time and Sign   ;;; 

; REPLACE BELOW WITH YOUR INITIALS ;
    initial := "INITIALS_HERE"
    
    !F6:: 
      FormatTime, time, A_now, dddd-MMM-yy hh:mm tt
      Send %time% ~ %initial% : {Enter} 
    return
