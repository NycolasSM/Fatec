@color f0
@title Copia de arquivos
@echo Bem-vindo ao sistema de backup!
@echo Para iniciar o backup tecle ENTER...
@pause>nul
@echo Copiando arquivos, aguarde...
@md c:\backup
@xcopy /e c:\nycolas\*.* c:\backup
@echo Fim do backup
@echo Para sair tecle ENTER
@echo Ate logo!
@pause>nul