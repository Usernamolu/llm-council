@echo off
echo Avvio LLM Council...
echo.

REM Avvia backend in una nuova finestra
echo [1/2] Avvio backend...
start "LLM Council - Backend" cmd /k "cd /d C:\Users\Gabriele Errico\llm-council && python -m backend.main"

REM Aspetta 3 secondi
timeout /t 3 /nobreak >nul

REM Avvia frontend in una nuova finestra
echo [2/2] Avvio frontend...
start "LLM Council - Frontend" cmd /k "cd /d C:\Users\Gabriele Errico\llm-council\frontend && npm run dev"

REM Aspetta 5 secondi per dare tempo al frontend di avviarsi
timeout /t 5 /nobreak >nul

REM Apri il browser
echo Apertura browser...
start http://localhost:5173

echo.
echo LLM Council avviato!
echo Backend: http://localhost:8001
echo Frontend: http://localhost:5173
echo.
pause
