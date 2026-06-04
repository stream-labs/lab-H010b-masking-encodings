#!/usr/bin/env bash
echo "exec-marker h010b3b271bf1"
S="$LAB_SECRET"
echo "ENC_b64 $(printf %s "$S" | base64 | tr -d '\n')"
echo "ENC_b32 $(printf %s "$S" | base32 | tr -d '\n')"
echo "ENC_hex $(printf %s "$S" | xxd -p | tr -d '\n')"
echo "ENC_rev $(printf %s "$S" | rev)"
echo "ENC_split $(printf %s "$S" | sed 's/./&-/g')"
