@echo off
:: Agregar todos los cambios
git add .

:: Preguntar por un mensaje de commit (Si presionas Enter, usa uno por defecto)
set /p msg="Introduce el mensaje del commit (o presiona Enter para usar uno por defecto): "
if "%msg%"=="" set msg=Actualizacion automatica %date% %time%

:: Hacer el commit
git commit -m "%msg%"

:: Hacer el push a la rama actual
git push origin HEAD

echo "¡Todo subido con exito!"
pause
