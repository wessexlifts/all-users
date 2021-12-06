    FileRead, initial, %A_ScriptDir%\initials.txt    
    !F6:: 
      FormatTime, time, A_now, dd/MM/yyyy hh:mm tt
      Send %time% ~ %initial% : {Enter} 
    return
