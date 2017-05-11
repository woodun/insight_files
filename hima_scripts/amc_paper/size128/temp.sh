printf "1\r\n" >> $output
sh collect_noecho_size128_delay_bypass_gto_all.sh
printf "2\r\n" >> $output
sh collect_noecho_size128_delay_gto_all.sh
printf "3\r\n" >> $output
sh collect_noecho_size128_delayonly_gto_all.sh
printf "4\r\n" >> $output
sh collect_size128_delay_bypass_gto_all.sh
printf "5\r\n" >> $output
sh collect_size128_delay_gto_all.sh
printf "6\r\n" >> $output
sh collect_size128_delayonly_gto_all.sh