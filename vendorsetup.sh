for combo in $(cat vendor/minimal/minimal-device-targets)
do
    add_lunch_combo $combo
done
