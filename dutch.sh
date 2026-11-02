#!/usr/bin/env bash
# 엔빵 - 회식비 정산기
# 사용법: bash dutch.sh <총액> <인원>

total=$1
people=$2

# 1인당 금액: 원 단위 올림 (걷은 돈이 모자라면 안 되니까!)
per=$(( (total + people - 1) / people ))

echo "1인당 ${per}원"
