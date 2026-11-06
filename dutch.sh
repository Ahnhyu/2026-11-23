#!/usr/bin/env bash
# 엔빵 - 회식비 정산기
# 사용법: bash dutch.sh <총액> <인원> [쿠폰]

if [ $# -lt 2 ]; then
  echo "사용법: bash dutch.sh <총액> <인원> [쿠폰]"
  exit 1
fi

total=$1
people=$2
coupon=${3:-0}

if [ "$coupon" -gt "$total" ]; then
  echo "쿠폰이 총액보다 큽니다"
  exit 1
fi

# 1인당 금액: 원 단위 올림 (걷은 돈이 모자라면 안 되니까!)
per=$(( (total - coupon + people - 1) / people ))

echo "1인당 ${per}원"
