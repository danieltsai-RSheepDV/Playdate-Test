#!/bin/sh

pdc Source Builds/Game.pdx
cd Temp

# if [$sim]
# then
#     $sim.CloseMainWindow()
#     $count = 0
#     while (!$sim.HasExited) 
#     {
#         Start-Sleep -Milliseconds 10
#         $count += 1

#         if ($count -ge 5)
#         {
#             $sim | Stop-Process -Force
#         }
#     }
# fi
if [[ $OSTYPE == 'darwin'* ]]; then
    open "$HOME/Developer/PlaydateSDK/bin/Playdate Simulator.app" ../Builds/Game.pdx
fi
if [[ $OSTYPE == 'msys'* ]]; then
    start %PLAYDATE_SDK_PATH%/bin/PlaydateSimulator.exe ../Builds/Game.pdx
fi
cd ..