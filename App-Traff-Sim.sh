#!/bin/bash -x


RANPAUSE=0.$1

OS=("Android 6.0.1" "Android 6.0" "Android 5.1" "Android 5.0.2" "Android 7.0" "Android 4.4.2" "Android 5.0" "Android 4.4.4" "Android 5.0.1"  "Android 5.1.1"  "Android 5.1.1" "Android 5.1.1" "Android 5.1.1" "Android 5.1.1"  "Android 5.1.1" "Android 7.1.1"  "Android 7.1.1"  "Android 7.1.1"  "Android 7.1.1"  "Android 7.1.2"  "Android 7.1.1" "Android 6.0" "Android 7.0" "Android 6.2" "Android 5.9" )

BRAND=("Samsung" "Samsung" "Samsung" "Google" "LG")

HARDWARE=("SM-J700F" "SM-J710F" "SM-J710F" "SM-J710F" "SM-J710F" "SM-J710F"  "vivo Y51L" "SM-J210F" "SM-G935F" "SM-J200G" "SM-G610F" "A1601" "vivo 1603" "SM-G900P" "SPH-L720" "Nexus 7"  "Nexus 7" "Nexus 7" "Nexus 7" "Nexus 7" "Nexus 7"  "Nexus 6p" "Nexus 7" "Nexus One" "SM-G935F" "SM-G935FD" "SM-G9350" "SM-G935A" "SM-G935V" "SM-G935R" "SM-G935S" "SM-G935K" "SM-G935W8" "SM-G928A" "SM-G928AZ" "SM-G928D" "SM-G928F" "SM-G928FD" "SM-G928I" "SM-G928K" "SM-G928L" "SM-G928P" "SM-G928PZ" "SM-G928R4" "SM-G928R7" "SM-G928S" "SM-G928T" "SM-G928T1" "SM-G928TR" "SM-G928V" "SM-G9280" "SM-G9288" "SM-G9289" )


CARRIER=("AT&T" "Sprint" "Verizon"  "Verizon"  "Verizon" "Telefônica"  "TIM" "Vivo" "Vodafone" "Plus"  "Beeline"  "Beeline"  "Beeline" "T-Mobile" "Orange" "Hutchison" "AT&T" "Sprint" "Verizon" "AT&T"  "Sprint" "Verizon" "Triatel")

IPADDRESS=("107.199.60.130" "85.90.227.224" "157.48.15.230" "134.201.250.155" "72.229.28.185" "64.79.136.185" "207.218.123.185" "50.22.219.2" "93.210.15.68" "136.0.16.217" "128.218.229.26" "195.235.232.206" "95.31.18.119" "88.190.229.170" "90.180.3.244" "201.190.216.130" "156.210.159.166" "91.86.123.126" "189.141.237.216" "173.198.192.113" "72.52.179.136")

CONTENT=( "text/css" "image/gif" "image/jpeg" "text/html" "application/javascript" )

CACHES=("HIT" "HIT" "HIT" "HIT" "HIT" "MISS" )

##
DESTINATION=("rev_edge" "origin")
SIGNAL=("LTE" "LTE" "LTE" "LTE" "WiFi" "WiFi" )
DOMAIN=( "fastapp.com" "fastapp.com" "fastapp.com" "fastapp.com" "fastapp.com" "nuubit.com" "nuubit.com" "nuubit.com" "www.nuubit.com"  "www.nuubit.com"  "www.nuubit.com"  "www.mobilesolutions.com" "bosanac.net" "southpole.com")


OBJECT=( "https://www.nuubit.com/" "https://www.nuubit.com/wp-content/plugins/divi-booster/core/fixes/126-customizer-social-icons/icons.css-ver=4.7.3" "https://www.nuubit.com/wp-content/uploads/wtfdivi/wp_head.css-1490713018-ver=4.7.3" "https://www.nuubit.com/wp-content/plugins/formcraft-form-builder/assets/css/form.main.css-ver=1.0.5" "https://www.nuubit.com/wp-content/plugins/formcraft-form-builder/assets/css/common-elements.css-ver=1.0.5" "https://www.nuubit.com/wp-content/plugins/formcraft-form-builder/assets/fontello/css/fcb.css-ver=1.0.5" "https://www.nuubit.com/rev-js/rev-js-substitute.min.js" "https://www.nuubit.com/wp-content/plugins/formcraft-form-builder/assets/fontello/css/animation.css-ver=1.0.5" "https://www.nuubit.com/wp-content/plugins/popup-maker/assets/css/site.min.css-ver=1.5.8" "https://www.nuubit.com/wp-content/themes/Divi/style.css-ver=3.0.40" "https://www.nuubit.com/wp-content/themes/Divi/epanel/shortcodes/css/shortcodes.css-ver=3.0.40" "https://www.nuubit.com/wp-content/themes/Divi/epanel/shortcodes/css/shortcodes_responsive.css-ver=3.0.40" "https://www.nuubit.com/wp-content/themes/Divi/includes/builder/styles/magnific_popup.css-ver=3.0.40" "https://www.nuubit.com/wp-includes/js/jquery/jquery.js-ver=1.12.4" "https://www.nuubit.com/wp-includes/js/jquery/jquery-migrate.min.js-ver=1.4.1" "https://www.nuubit.com/wp-content/uploads/2017/04/bars.png" "https://www.nuubit.com/wp-content/uploads/2017/04/shield.png" "https://www.nuubit.com/wp-content/uploads/2017/04/speed-meter.png" "https://www.nuubit.com/wp-content/uploads/2017/04/cog.png" "https://www.nuubit.com/wp-content/themes/Divi/includes/builder/scripts/frontend-builder-global-functions.js-ver=3.0.40" "https://www.nuubit.com/wp-content/themes/Divi/includes/builder/scripts/jquery.mobile.custom.min.js-ver=3.0.40" "https://www.nuubit.com/wp-content/themes/Divi/js/custom.js-ver=3.0.40" "https://www.nuubit.com/wp-includes/js/jquery/ui/core.min.js-ver=1.11.4" "https://www.nuubit.com/wp-includes/js/jquery/ui/position.min.js-ver=1.11.4" "https://www.nuubit.com/wp-content/themes/Divi/includes/builder/scripts/jquery.fitvids.js-ver=3.0.40" "https://www.nuubit.com/wp-content/themes/Divi/includes/builder/scripts/waypoints.min.js-ver=3.0.40" "https://www.nuubit.com/wp-content/themes/Divi/includes/builder/scripts/jquery.magnific-popup.js-ver=3.0.40" "https://www.nuubit.com/wp-content/themes/Divi/includes/builder/scripts/frontend-builder-scripts.js-ver=3.0.40" "https://www.nuubit.com/wp-content/uploads/wtfdivi/wp_footer.js-1490713018-ver=4.7.3" "https://www.nuubit.com/wp-includes/js/wp-embed.min.js-ver=4.7.3" "https://www.nuubit.com/wp-content/plugins/popup-maker/assets/js/site.min.js-defer-ver=1.5.8" "https://fonts.googleapis.com/css-family=Open+Sans" "https://fonts.googleapis.com/css-family=Acme|Montserrat" "https://fonts.googleapis.com/css-family=Roboto+Condensed")




RANDOM=$$$(date +%s)

while [ 1 ]
do

    # Get random expression...
index=$( jot -r 1  0 $((${#OS[@]} - 1)) )
osprint=${OS[index]}

index=$( jot -r 1  0 $((${#CACHES[@]} - 1)) )
chprint=${CACHES[index]}

index=$( jot -r 1  0 $((${#BRAND[@]} - 1)) )
brprint=${BRAND[index]}

index=$( jot -r 1  0 $((${#HARDWARE[@]} - 1)) )
hwprint=${HARDWARE[index]}

index=$( jot -r 1  0 $((${#IPADDRESS[@]} - 1)) )
ipprint=${IPADDRESS[index]}

index=$( jot -r 1  0 $((${#CARRIER[@]} - 1)) )
caprint=${CARRIER[index]}

index=$( jot -r 1  0 $((${#CONTENT[@]} - 1)) )
coprint=${CONTENT[index]}

index=$( jot -r 1  0 $((${#DESTINATION[@]} - 1)) )
deprint=${DESTINATION[index]}

index=$( jot -r 1  0 $((${#SIGNAL[@]} - 1)) )
siprint=${SIGNAL[index]}

index=$( jot -r 1  0 $((${#OBJECT[@]} - 1)) )
obprint=${OBJECT[index]}

echo $obprint

index=$( jot -r 1  0 $((${#DOMAIN[@]} - 1)) )
doprint=${DOMAIN[index]}



TS_CURRENT=`date +%s122`

### Edge
#
#
TS_START_EDGE=$(echo $TS_CURRENT - 100 | bc)

#
if [ "$DEBUG" = "1" ]; then
        echo "$TS_CURRENT "
fi
if [ "$DEBUG" = "1" ]; then
        echo -n "$TS_START_EDGE "
fi

RANTIME=$((1 + RANDOM % 10))

#
if [ "$DEBUG" = "1" ]; then
        echo $RANTIME current
fi

EDGE_FBT=$(echo $RANTIME + $TS_START_EDGE | bc)

#
if [ "$DEBUG" = "1" ]; then
        echo -n "$EDGE_FBT "
fi

RANTIME=$((1 + RANDOM % 200))

if [ "$DEBUG" = "1" ]; then
        echo $RANTIME edge FBT
fi

TS_END_EDGE=$(echo $RANTIME + $EDGE_FBT | bc)

if [ "$DEBUG" = "1" ]; then
        echo -n "$TS_END_EDGE "
fi

### Origin
#
#


RANTIME=$((1 + RANDOM % 20))

if [ "$DEBUG" = "1" ]; then
        echo $RANTIME edge END
fi

TS_START_ORIG=$(echo $TS_END_EDGE + $RANTIME | bc)

if [ "$DEBUG" = "1" ]; then
        echo -n "$TS_START_ORIG "
fi

RANTIME=$((1 + RANDOM % 20))

if [ "$DEBUG" = "1" ]; then
        echo $RANTIME orig start
fi

ORIG_FBT=$(echo $TS_START_ORIG + $RANTIME | bc)

if [ "$DEBUG" = "1" ]; then
        echo -n "$ORIG_FBT "
fi

RANTIME=$((1 + RANDOM % 300))

if [ "$DEBUG" = "1" ]; then
        echo $RANTIME orig  FBT
fi
TS_END_ORIG=$(echo $ORIG_FBT + $RANTIME | bc)

if [ "$DEBUG" = "1" ]; then
        echo $TS_END_ORIG
fi



BYTES=$((1 + RANDOM % 999999))
hits=$((1 + RANDOM % 15))



echo "{
   \"location\" : {
      \"longitude\" : 0,
      \"direction\" : 0,
      \"speed\" : 0,
      \"latitude\" : 0
   },
   \"end_ts\" : $TS_END_EDGE,
   \"version\" : \"1.0\",
   \"wifi\" : {},
   \"app_name\" : \"International App\",
   \"device\" : {
      \"cpu\" : \"x86\",
      \"hight\" : \"1776\",
      \"os_name\" : \"$osprint\",
      \"batt_status\" : \"Charging\",
      \"phone_number\" : \"15555215554\",
      \"cpu_sub\" : \"0\",
      \"imei\" : \"000000000000000\",
      \"imsi\" : \"310260000000000\",
      \"batt_temp\" : \"0\",
      \"width\" : \"1080\",
      \"model\" : \"$hwprint\",
      \"uuid\" : \"f01d9902-93da-3b5d-a932-d375672a7c4a\",
      \"cpu_cores\" : \"2\",
      \"os_version\" : \"5.0.2\",
      \"meis\" : \"000000000000000\",
      \"batt_tech\" : \"Li-ion\",
      \"brand\" : \"$brprint\",
      \"cpu_freq\" : \"_\",
      \"cpu_number\" : \"2\",
      \"os\" : \"$osprint\",
      \"batt_cap\" : 50,
      \"iccid\" : \"89014103211118510720\",
      \"batt_volt\" : \"0\",
      \"serial_number\" : \"unknown\",
      \"device\" : \"$hwprint\",
      \"manufacture\" : \"unknown\",
      \"radio_serial\" : \"\"
   },
   \"requests\" : [
      {
         \"success_status\" : 1,
         \"local_cache_status\" : \"public, max-age=31536000\",
         \"url\" : \"$obprint\",
         \"end_ts\" : $TS_END_EDGE,
         \"cont_type\" : \"$coprint\",
         \"received_bytes\" : $BYTES,
         \"keepalive_status\" : 1,
         \"domain\" : \"$doprint\",
         \"x-rev-cache\" : \"$chprint\",
         \"transport_protocol\" : \"standard\",
         \"first_byte_ts\" : $EDGE_FBT,
         \"destination\" : \"rev_edge\",
         \"status_code\" : 200,
         \"start_ts\" : $TS_START_EDGE,
         \"sent_ts\" : $TS_START_EDGE,
         \"protocol\" : \"https\",
         \"network\" : \"$caprint\",
         \"edge_transport\" : \"standard\",
         \"cont_encoding\" : \"ISO-8859-1\",
         \"sent_bytes\" : $BYTES,
         \"conn_id\" : -1,
         \"method\" : \"GET\"
      }
   ],
   \"LEVEL\" : \"debug\",
   \"HITS\" : $hits,
   \"sdk_version\" : \"1\",
   \"network\" : {
      \"wifi_gw\" : \"_\",
      \"tcp_bytes_in\" : \"0\",
      \"dns1\" : \"8.8.8.8\",
      \"transport_protocol\" : \"_\",
      \"ip_total_packets_out\" : \"0\",
      \"wifi_ip\" : \"_\",
      \"cellular_ip_external\" : \"_\",
      \"ip_total_packets_in\" : \"0\",
      \"udp_bytes_out\" : \"_\",
      \"ip_reassemblies\" : \"0\",
      \"rtt\" : \"0\",
      \"ip_total_bytes_out\" : \"0\",
      \"tcp_retransmits\" : \"_\",
      \"wifi_extip\" : \"_\",
      \"ip_total_bytes_in\" : \"0\",
      \"cellular_ip_internal\" : \"_\",
      \"tcp_bytes_out\" : \"_\",
      \"wifi_dhcp\" : \"_\",
      \"wifi_mask\" : \"_\",
      \"dns2\" : \"8.8.4.4\",
      \"udp_bytes_in\" : \"_\"
   },
   \"log_events\" : [],
   \"IP\" : \"$ipprint\",
   \"start_ts\" : $TS_START_EDGE,
   \"sdk_key\" : \"d539fa40-32eb-4918-b462-43d3c07bd000\",
   \"carrier\" : {
      \"network_type\" : \"$siprint\",
      \"rssi_best\" : \"-10000\",
      \"sim_operator\" : \"$caprint\",
      \"net_operator\" : \"$caprint\",
      \"rssi_avg\" : \"-10000\",
      \"tower_cell_id_l\" : \"_\",
      \"tower_cell_id_s\" : \"_\",
      \"mnc\" : \"260\",
      \"device_id\" : \"000000000000000\",
      \"RSSI\" : \"-10000\",
      \"mcc\" : \"310\",
      \"signal_type\" : \"$siprint\",
      \"country_code\" : \"US\"
   }
}" > edge.json

echo "{
   \"location\" : {
      \"longitude\" : 0,
      \"direction\" : 0,
      \"speed\" : 0,
      \"latitude\" : 0
   },
   \"end_ts\" : $TS_END_ORIG,
   \"version\" : \"1.0\",
   \"wifi\" : {},
   \"app_name\" : \"My Example Android App\",
   \"device\" : {
      \"cpu\" : \"x86\",
      \"hight\" : \"1776\",
      \"os_name\" : \"$osprint\",
      \"batt_status\" : \"Charging\",
      \"phone_number\" : \"15555215554\",
      \"cpu_sub\" : \"0\",
      \"imei\" : \"000000000000000\",
      \"imsi\" : \"310260000000000\",
      \"batt_temp\" : \"0\",
      \"width\" : \"1080\",
      \"model\" : \"$hwprint\",
      \"uuid\" : \"f01d9902-93da-3b5d-a932-d375672a7c4a\",
      \"cpu_cores\" : \"2\",
      \"os_version\" : \"5.0.2\",
      \"meis\" : \"000000000000000\",
      \"batt_tech\" : \"Li-ion\",
      \"brand\" : \"$brprint\",
      \"cpu_freq\" : \"_\",
      \"cpu_number\" : \"2\",
      \"os\" : \"$osprint\",
      \"batt_cap\" : 50,
      \"iccid\" : \"89014103211118510720\",
      \"batt_volt\" : \"0\",
      \"serial_number\" : \"unknown\",
      \"device\" : \"$hwprint\",
      \"manufacture\" : \"unknown\",
      \"radio_serial\" : \"\"
   },
   \"requests\" : [
      {
         \"success_status\" : 1,
         \"local_cache_status\" : \"public, max-age=31536000\",
         \"url\" : \"$obprint\",
         \"end_ts\" : $TS_END_ORIG,
         \"cont_type\" : \"$coprint\",
         \"received_bytes\" : $BYTES,
         \"keepalive_status\" : 1,
         \"domain\" : \"$doprint\",
         \"x-rev-cache\" : \"$chprint\",
         \"transport_protocol\" : \"standard\",
         \"first_byte_ts\" : $ORIG_FBT,
         \"destination\" : \"origin\",
         \"status_code\" : 200,
         \"start_ts\" : $TS_START_ORIG,
         \"sent_ts\" : $TS_START_ORIG,
         \"protocol\" : \"https\",
         \"network\" : \"$caprint\",
         \"edge_transport\" : \"standard\",
         \"cont_encoding\" : \"ISO-8859-1\",
         \"sent_bytes\" : $BYTES,
         \"conn_id\" : -1,
         \"method\" : \"GET\"
      }
   ],
   \"LEVEL\" : \"debug\",
   \"HITS\" : $hits,
   \"sdk_version\" : \"1\",
   \"network\" : {
      \"wifi_gw\" : \"_\",
      \"tcp_bytes_in\" : \"0\",
      \"dns1\" : \"8.8.8.8\",
      \"transport_protocol\" : \"_\",
      \"ip_total_packets_out\" : \"0\",
      \"wifi_ip\" : \"_\",
      \"cellular_ip_external\" : \"_\",
      \"ip_total_packets_in\" : \"0\",
      \"udp_bytes_out\" : \"_\",
      \"ip_reassemblies\" : \"0\",
      \"rtt\" : \"0\",
      \"ip_total_bytes_out\" : \"0\",
      \"tcp_retransmits\" : \"_\",
      \"wifi_extip\" : \"_\",
      \"ip_total_bytes_in\" : \"0\",
      \"cellular_ip_internal\" : \"_\",
      \"tcp_bytes_out\" : \"_\",
      \"wifi_dhcp\" : \"_\",
      \"wifi_mask\" : \"_\",
      \"dns2\" : \"8.8.4.4\",
      \"udp_bytes_in\" : \"_\"
   },
   \"log_events\" : [],
   \"IP\" : \"$ipprint\",
   \"start_ts\" : $TS_START_ORIG,
   \"sdk_key\" : \"d539fa40-32eb-4918-b462-43d3c07bd000\",
   \"carrier\" : {
      \"network_type\" : \"$siprint\",
      \"rssi_best\" : \"-10000\",
      \"sim_operator\" : \"$caprint\",
      \"net_operator\" : \"$caprint\",
      \"rssi_avg\" : \"-10000\",
      \"tower_cell_id_l\" : \"_\",
      \"tower_cell_id_s\" : \"_\",
      \"mnc\" : \"260\",
      \"device_id\" : \"000000000000000\",
      \"RSSI\" : \"-10000\",
      \"mcc\" : \"310\",
      \"signal_type\" : \"$siprint\",
      \"country_code\" : \"US\"
   }
}" > orig.json


curl -i \
    -H "Accept: application/json" \
    -X POST -d @edge.json \
https://stats-api.revsw.net/v1/stats/apps


curl -i \
    -H "Accept: application/json" \
    -X POST -d @orig.json \
https://stats-api.revsw.net/v1/stats/apps



H=$(date +%H)


if (( 0 <= 10#$H && 10#$H < 3 )); then

	sleep .3

elif (( 3 <= 10#$H && 10#$H < 6  )); then

	sleep 1


elif (( 6  <= 10#$H && 10#$H < 9 )); then

	sleep 2


elif (( 9 <= 10#$H && 10#$H < 12  )); then

	sleep 3

elif (( 12 <= 10#$H && 10#$H < 16  )); then

	sleep 2


elif (( 16 <= 10#$H && 10#$H < 19  )); then

	sleep 1

elif (( 19 <= 10#$H && 10#$H < 24  )); then

	sleep .5


else

	D=`date`

	echo error at $D >> ~jon/error.log

	sleep 1

fi


sleep $RANPAUSE


done
