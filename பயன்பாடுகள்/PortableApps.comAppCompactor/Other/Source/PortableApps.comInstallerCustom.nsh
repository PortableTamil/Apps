!macro CustomCodePreInstall
	${IfNot} $bolAppUpgrade == true
		${GetParent} $INSTDIR $0
		${If} ${FileExists} '$0\AppCompactor\AppInfo\appinfo.ini'
			RMDir /r '$0\AppCompactor'
		${EndIf}
	${EndIf}
!macroend