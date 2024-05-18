#!/bin/sh

# Specifies the file path to export the dart-defines.
OUTPUT_FILE="${SRCROOT}/Flutter/DartDefines.xcconfig"
# Clearing the file initially to prevent remaining old properties.
: > $OUTPUT_FILE

# Function for decoding dart-defines.
function decode_url() { echo "${*}" | base64 --decode; }

IFS=',' read -r -a define_items <<<"$DART_DEFINES"

for index in "${!define_items[@]}"
do
    item=$(decode_url "${define_items[$index]}")
    # The definition of Dart includes variables generated automatically on the Flutter side and causes an error.
    # Therefore, exclude those variables starting with `flutter` or `FLUTTER`.
    lowercase_item=$(echo "$item" | tr '[:upper:]' '[:lower:]')
    if [[ $lowercase_item != flutter* ]]; then
        echo "$item" >> "$OUTPUT_FILE"
    fi
done
