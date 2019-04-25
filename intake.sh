#! /bin/env zsh

echo "Enter Dose Amount";
read amount;

echo "Time: $(date +'%m/%d %r') -- Dose: $amount)" >> ~/Documents/kratom-log/intake.log
echo "LOGGED -> $(tail -1 ~/Documents/kratom-log/intake.log)"
