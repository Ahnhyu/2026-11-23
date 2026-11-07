#!/usr/bin/env bash
# 엔빵: 회식비를 인원수대로 나눠 주는 정산기

usage() {
  echo "사용법: bash dutch.sh <총액> <인원> [쿠폰]"
  exit 1
}

[ $# -lt 2 ] && usage

total=$1
people=$2
coupon=${3:-0}

if [ "$coupon" -gt "$total" ]; then
  echo "쿠폰이 총액보다 큽니다"
  exit 1
fi

# 1인당 금액
per=$(( (total - coupon) / people ))

echo "1인당 ${per}원"
