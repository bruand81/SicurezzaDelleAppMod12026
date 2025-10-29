#!/bin/sh

set -e

addgroup --quiet --system --gid 400 phoenix-amd64-stack-zero
addgroup --quiet --system --gid 401 phoenix-amd64-stack-one
addgroup --quiet --system --gid 402 phoenix-amd64-stack-two
addgroup --quiet --system --gid 403 phoenix-amd64-stack-three
addgroup --quiet --system --gid 404 phoenix-amd64-stack-four
addgroup --quiet --system --gid 405 phoenix-amd64-stack-five
addgroup --quiet --system --gid 406 phoenix-amd64-stack-six

addgroup --quiet --system --gid 407 phoenix-amd64-format-zero
addgroup --quiet --system --gid 408 phoenix-amd64-format-one
addgroup --quiet --system --gid 409 phoenix-amd64-format-two
addgroup --quiet --system --gid 410 phoenix-amd64-format-three
addgroup --quiet --system --gid 411 phoenix-amd64-format-four

addgroup --quiet --system --gid 412 phoenix-amd64-heap-zero
addgroup --quiet --system --gid 413 phoenix-amd64-heap-one
addgroup --quiet --system --gid 414 phoenix-amd64-heap-two
addgroup --quiet --system --gid 415 phoenix-amd64-heap-three

addgroup --quiet --system --gid 416 phoenix-amd64-net-zero
addgroup --quiet --system --gid 417 phoenix-amd64-net-one
addgroup --quiet --system --gid 418 phoenix-amd64-net-two

addgroup --quiet --system --gid 419 phoenix-amd64-final-zero
addgroup --quiet --system --gid 420 phoenix-amd64-final-one
addgroup --quiet --system --gid 421 phoenix-amd64-final-two


adduser --quiet --system  --no-create-home --home /nonexistent --uid 400 --gid 400 phoenix-amd64-stack-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 401 --gid 401 phoenix-amd64-stack-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 402 --gid 402 phoenix-amd64-stack-two
adduser --quiet --system  --no-create-home --home /nonexistent --uid 403 --gid 403 phoenix-amd64-stack-three
adduser --quiet --system  --no-create-home --home /nonexistent --uid 404 --gid 404 phoenix-amd64-stack-four
adduser --quiet --system  --no-create-home --home /nonexistent --uid 405 --gid 405 phoenix-amd64-stack-five
adduser --quiet --system  --no-create-home --home /nonexistent --uid 406 --gid 406 phoenix-amd64-stack-six

adduser --quiet --system  --no-create-home --home /nonexistent --uid 407 --gid 407 phoenix-amd64-format-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 408 --gid 408 phoenix-amd64-format-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 409 --gid 409 phoenix-amd64-format-two
adduser --quiet --system  --no-create-home --home /nonexistent --uid 410 --gid 410 phoenix-amd64-format-three
adduser --quiet --system  --no-create-home --home /nonexistent --uid 411 --gid 411 phoenix-amd64-format-four

adduser --quiet --system  --no-create-home --home /nonexistent --uid 412 --gid 412 phoenix-amd64-heap-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 413 --gid 413 phoenix-amd64-heap-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 414 --gid 414 phoenix-amd64-heap-two
adduser --quiet --system  --no-create-home --home /nonexistent --uid 415 --gid 415 phoenix-amd64-heap-three

adduser --quiet --system  --no-create-home --home /nonexistent --uid 416 --gid 416 phoenix-amd64-net-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 417 --gid 417 phoenix-amd64-net-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 418 --gid 418 phoenix-amd64-net-two

adduser --quiet --system  --no-create-home --home /nonexistent --uid 419 --gid 419 phoenix-amd64-final-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 420 --gid 420 phoenix-amd64-final-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 421 --gid 421 phoenix-amd64-final-two

addgroup --quiet --system --gid 500 phoenix-i386-stack-zero
addgroup --quiet --system --gid 501 phoenix-i386-stack-one
addgroup --quiet --system --gid 502 phoenix-i386-stack-two
addgroup --quiet --system --gid 503 phoenix-i386-stack-three
addgroup --quiet --system --gid 504 phoenix-i386-stack-four
addgroup --quiet --system --gid 505 phoenix-i386-stack-five
addgroup --quiet --system --gid 506 phoenix-i386-stack-six

addgroup --quiet --system --gid 507 phoenix-i386-format-zero
addgroup --quiet --system --gid 508 phoenix-i386-format-one
addgroup --quiet --system --gid 509 phoenix-i386-format-two
addgroup --quiet --system --gid 510 phoenix-i386-format-three
addgroup --quiet --system --gid 511 phoenix-i386-format-four

addgroup --quiet --system --gid 512 phoenix-i386-heap-zero
addgroup --quiet --system --gid 513 phoenix-i386-heap-one
addgroup --quiet --system --gid 514 phoenix-i386-heap-two
addgroup --quiet --system --gid 515 phoenix-i386-heap-three

addgroup --quiet --system --gid 516 phoenix-i386-net-zero
addgroup --quiet --system --gid 517 phoenix-i386-net-one
addgroup --quiet --system --gid 518 phoenix-i386-net-two

addgroup --quiet --system --gid 519 phoenix-i386-final-zero
addgroup --quiet --system --gid 520 phoenix-i386-final-one
addgroup --quiet --system --gid 521 phoenix-i386-final-two


adduser --quiet --system  --no-create-home --home /nonexistent --uid 500 --gid 500 phoenix-i386-stack-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 501 --gid 501 phoenix-i386-stack-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 502 --gid 502 phoenix-i386-stack-two
adduser --quiet --system  --no-create-home --home /nonexistent --uid 503 --gid 503 phoenix-i386-stack-three
adduser --quiet --system  --no-create-home --home /nonexistent --uid 504 --gid 504 phoenix-i386-stack-four
adduser --quiet --system  --no-create-home --home /nonexistent --uid 505 --gid 505 phoenix-i386-stack-five
adduser --quiet --system  --no-create-home --home /nonexistent --uid 506 --gid 506 phoenix-i386-stack-six

adduser --quiet --system  --no-create-home --home /nonexistent --uid 507 --gid 507 phoenix-i386-format-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 508 --gid 508 phoenix-i386-format-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 509 --gid 509 phoenix-i386-format-two
adduser --quiet --system  --no-create-home --home /nonexistent --uid 510 --gid 510 phoenix-i386-format-three
adduser --quiet --system  --no-create-home --home /nonexistent --uid 511 --gid 511 phoenix-i386-format-four

adduser --quiet --system  --no-create-home --home /nonexistent --uid 512 --gid 512 phoenix-i386-heap-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 513 --gid 513 phoenix-i386-heap-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 514 --gid 514 phoenix-i386-heap-two
adduser --quiet --system  --no-create-home --home /nonexistent --uid 515 --gid 515 phoenix-i386-heap-three

adduser --quiet --system  --no-create-home --home /nonexistent --uid 516 --gid 516 phoenix-i386-net-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 517 --gid 517 phoenix-i386-net-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 518 --gid 518 phoenix-i386-net-two

adduser --quiet --system  --no-create-home --home /nonexistent --uid 519 --gid 519 phoenix-i386-final-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 520 --gid 520 phoenix-i386-final-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 521 --gid 521 phoenix-i386-final-two


deb-systemd-helper enable phoenix-amd64-net-zero.socket phoenix-amd64-net-one.socket phoenix-amd64-net-two.socket phoenix-amd64-final-zero.socket phoenix-amd64-final-one.socket phoenix-amd64-final-two.socket phoenix-i386-net-zero.socket phoenix-i386-net-one.socket phoenix-i386-net-two.socket phoenix-i386-final-zero.socket phoenix-i386-final-one.socket phoenix-i386-final-two.socket
deb-systemd-helper disable apt-daily.timer apt-daily-upgrade.timer

mkdir -m 1777 -p /var/lib/coredumps || true
chown root:root /var/lib/coredumps

printf "Phoenix - brought to you by https://exploit.education/phoenix/\nEnjoying Phoenix? Consider donating - https://exploit.education/donate/\n\n" > /etc/issue

