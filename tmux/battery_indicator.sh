#!/bin/bash

HEART=' ♥'
echo -n '#[fg=colour4]'
echo -n "Battery: ("

if [[ uname == 'Linux' ]]; then
  current_charge=$(cat /proc/acpi/battery/BAT1/state | grep 'remaining capacity' | awk '{print $3}')
  total_charge=$(cat /proc/acpi/battery/BAT1/info | grep 'last full capacity' | awk '{print $4}')
else
  battery_info=`ioreg -rc AppleSmartBattery`
  current_charge=$(echo $battery_info | grep -o '"CurrentCapacity" = [0-9]\+' | awk '{print $3}')
  total_charge=$(echo $battery_info | grep -o '"MaxCapacity" = [0-9]\+' | awk '{print $3}')
fi

charged_slots=$(echo "(($current_charge/$total_charge)*5 + 1)" | bc -l | cut -d '.' -f 1)
if [[ $charged_slots -gt 5 ]]; then
  charged_slots=5
fi

echo -n '#[fg=colour196]'
for i in `seq 1 $charged_slots`; do echo -n "$HEART"; done

if [[ $charged_slots -lt 5 ]]; then
  echo -n '#[fg=colour254]'
  for i in `seq 1 $(echo "5-$charged_slots" | bc)`; do echo -n "$HEART"; done
fi

echo -n '#[fg=colour4]'
echo -n " )"
