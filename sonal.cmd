@echo off
title SONAL - LOW END GAME PREP
color 0A
echo ======================================
echo       SONAL - LOW END GAME PREP
echo ======================================
echo.
echo This script only requests the Windows High Performance power plan.
echo It does not change registry settings, disable security, or delete files.
echo.
choice /C YN /M "Apply High Performance power plan now"
if errorlevel 2 goto done
powercfg /setactive SCHEME_MIN
if errorlevel 1 (
  echo.
  echo Windows could not apply that power plan on this PC.
  echo You can continue using the manual settings guide.
) else (
  echo.
  echo [OK] Power plan command completed.
)
:done
echo.
echo To restore Balanced later, run:
echo powercfg /setactive SCHEME_BALANCED
echo.
pause
