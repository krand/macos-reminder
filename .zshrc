function remindme() { 
  local TIME_UNIT="minute"
  local TIME_VAL="$2"
  if [[ $TIME_VAL =~ "^([0-9]+)h$" ]]; then
    TIME_UNIT="hour"
    TIME_VAL=${match[1]}
  fi
  if [[ $TIME_VAL == "" ]]; then
    TIME_VAL="30"
  fi
  if [[ $TIME_VAL != "1" ]]; then
    TIME_UNIT=$TIME_UNIT"s"
  fi
  echo "open -a /Applications/terminal-notifier.app --args -title 'REMINDER:' -message '☝🏻$1' -sound default -sender com.apple.Terminal" | at now + $TIME_VAL $TIME_UNIT
}