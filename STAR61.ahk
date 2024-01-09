#Requires AutoHotkey v2.0

$vkBF:: { 
state := GetKeyState("CapsLock", "T")
Static presses := 0
hk := StrReplace(ThisHotkey, "$")   ; Strip the dollar sign
hc := "{Up}"

if state == 1{
  presses := 3
  done
  return
}
	
If KeyWait(hk, 'T.1'){
	done
	presses++
}        
Else Send(hc), presses := -1     ; If held, send the shifted key

done() {                             ; Key presses have ended
  Switch presses {
   Case 1: Send "{vkBF}"                 ; Single
   Case 2: Send hc                       ; Double
   Case 3: Send hc
}
  presses := 0
 }
}


$AppsKey:: { 
state := GetKeyState("CapsLock", "T")
Static presses := 1
hk := StrReplace(ThisHotkey, "$")   ; Strip the dollar sign
hc := "{Down}"

if state == 1{
  presses := 3
  done
  return
}

If KeyWait(hk, 'T.1'){
	done
	presses++
}        
Else Send(hc), presses := -1     ; If held, send the shifted key
done() {                             ; Key presses have ended
  Switch presses {
   Case 1: Send "{AppsKey}"                 ; Single
   Case 2: Send hc                       ; Double
   Case 3: Send hc
}
  presses := 0
 }
}


$vkA5:: { 
state := GetKeyState("CapsLock", "T")
Static presses := 1
hk := StrReplace(ThisHotkey, "$")   ; Strip the dollar sign
hc := "{Left}"

if state == 1{
  presses := 3
  done
  return
}

If KeyWait(hk, 'T.1'){
	done
	presses++
}        
Else Send(hc), presses := -1     ; If held, send the shifted key
done() {                             ; Key presses have ended
  Switch presses {
   Case 1: Send "{vkA5}"                 ; Single
   Case 2: Send hc                       ; Double
   Case 3: Send hc
}
  presses := 0
 }
}


$vkA3:: { 
state := GetKeyState("CapsLock", "T")
Static presses := 1
hk := StrReplace(ThisHotkey, "$")   ; Strip the dollar sign
hc := "{Right}"

if state == 1{
  presses := 3
  done
  return
}

If KeyWait(hk, 'T.1'){
	done
	presses++
}        
Else Send(hc), presses := -1     ; If held, send the shifted key
done() {                             ; Key presses have ended
  Switch presses {
   Case 1: Send "{vkA3}"                 ; Single
   Case 2: Send hc                       ; Double
   Case 3: Send hc
}
  presses := 0
 }
}