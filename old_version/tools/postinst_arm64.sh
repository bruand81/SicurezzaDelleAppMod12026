#!/bin/sh

set -e

addgroup --quiet --system --gid 600 phoenix-arm64-stack-zero
addgroup --quiet --system --gid 601 phoenix-arm64-stack-one
addgroup --quiet --system --gid 602 phoenix-arm64-stack-two
addgroup --quiet --system --gid 603 phoenix-arm64-stack-three
addgroup --quiet --system --gid 604 phoenix-arm64-stack-four
addgroup --quiet --system --gid 605 phoenix-arm64-stack-five
addgroup --quiet --system --gid 606 phoenix-arm64-stack-six

addgroup --quiet --system --gid 607 phoenix-arm64-format-zero
addgroup --quiet --system --gid 608 phoenix-arm64-format-one
addgroup --quiet --system --gid 609 phoenix-arm64-format-two
addgroup --quiet --system --gid 610 phoenix-arm64-format-three
addgroup --quiet --system --gid 611 phoenix-arm64-format-four

addgroup --quiet --system --gid 612 phoenix-arm64-heap-zero
addgroup --quiet --system --gid 613 phoenix-arm64-heap-one
addgroup --quiet --system --gid 614 phoenix-arm64-heap-two
addgroup --quiet --system --gid 615 phoenix-arm64-heap-three

addgroup --quiet --system --gid 616 phoenix-arm64-net-zero
addgroup --quiet --system --gid 617 phoenix-arm64-net-one
addgroup --quiet --system --gid 618 phoenix-arm64-net-two

addgroup --quiet --system --gid 619 phoenix-arm64-final-zero
addgroup --quiet --system --gid 620 phoenix-arm64-final-one
addgroup --quiet --system --gid 621 phoenix-arm64-final-two


adduser --quiet --system  --no-create-home --home /nonexistent --uid 600 --gid 600 phoenix-arm64-stack-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 601 --gid 601 phoenix-arm64-stack-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 602 --gid 602 phoenix-arm64-stack-two
adduser --quiet --system  --no-create-home --home /nonexistent --uid 603 --gid 603 phoenix-arm64-stack-three
adduser --quiet --system  --no-create-home --home /nonexistent --uid 604 --gid 604 phoenix-arm64-stack-four
adduser --quiet --system  --no-create-home --home /nonexistent --uid 605 --gid 605 phoenix-arm64-stack-five
adduser --quiet --system  --no-create-home --home /nonexistent --uid 606 --gid 606 phoenix-arm64-stack-six

adduser --quiet --system  --no-create-home --home /nonexistent --uid 607 --gid 607 phoenix-arm64-format-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 608 --gid 608 phoenix-arm64-format-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 609 --gid 609 phoenix-arm64-format-two
adduser --quiet --system  --no-create-home --home /nonexistent --uid 610 --gid 610 phoenix-arm64-format-three
adduser --quiet --system  --no-create-home --home /nonexistent --uid 611 --gid 611 phoenix-arm64-format-four

adduser --quiet --system  --no-create-home --home /nonexistent --uid 612 --gid 612 phoenix-arm64-heap-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 613 --gid 613 phoenix-arm64-heap-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 614 --gid 614 phoenix-arm64-heap-two
adduser --quiet --system  --no-create-home --home /nonexistent --uid 615 --gid 615 phoenix-arm64-heap-three

adduser --quiet --system  --no-create-home --home /nonexistent --uid 616 --gid 616 phoenix-arm64-net-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 617 --gid 617 phoenix-arm64-net-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 618 --gid 618 phoenix-arm64-net-two

adduser --quiet --system  --no-create-home --home /nonexistent --uid 619 --gid 619 phoenix-arm64-final-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 620 --gid 620 phoenix-arm64-final-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 621 --gid 621 phoenix-arm64-final-two

addgroup --quiet --system --gid 700 phoenix-arm-stack-zero
addgroup --quiet --system --gid 701 phoenix-arm-stack-one
addgroup --quiet --system --gid 702 phoenix-arm-stack-two
addgroup --quiet --system --gid 703 phoenix-arm-stack-three
addgroup --quiet --system --gid 704 phoenix-arm-stack-four
addgroup --quiet --system --gid 705 phoenix-arm-stack-five
addgroup --quiet --system --gid 706 phoenix-arm-stack-six

addgroup --quiet --system --gid 707 phoenix-arm-format-zero
addgroup --quiet --system --gid 708 phoenix-arm-format-one
addgroup --quiet --system --gid 709 phoenix-arm-format-two
addgroup --quiet --system --gid 710 phoenix-arm-format-three
addgroup --quiet --system --gid 711 phoenix-arm-format-four

addgroup --quiet --system --gid 712 phoenix-arm-heap-zero
addgroup --quiet --system --gid 713 phoenix-arm-heap-one
addgroup --quiet --system --gid 714 phoenix-arm-heap-two
addgroup --quiet --system --gid 715 phoenix-arm-heap-three

addgroup --quiet --system --gid 716 phoenix-arm-net-zero
addgroup --quiet --system --gid 717 phoenix-arm-net-one
addgroup --quiet --system --gid 718 phoenix-arm-net-two

addgroup --quiet --system --gid 719 phoenix-arm-final-zero
addgroup --quiet --system --gid 720 phoenix-arm-final-one
addgroup --quiet --system --gid 721 phoenix-arm-final-two


adduser --quiet --system  --no-create-home --home /nonexistent --uid 700 --gid 700 phoenix-arm-stack-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 701 --gid 701 phoenix-arm-stack-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 702 --gid 702 phoenix-arm-stack-two
adduser --quiet --system  --no-create-home --home /nonexistent --uid 703 --gid 703 phoenix-arm-stack-three
adduser --quiet --system  --no-create-home --home /nonexistent --uid 704 --gid 704 phoenix-arm-stack-four
adduser --quiet --system  --no-create-home --home /nonexistent --uid 705 --gid 705 phoenix-arm-stack-five
adduser --quiet --system  --no-create-home --home /nonexistent --uid 706 --gid 706 phoenix-arm-stack-six

adduser --quiet --system  --no-create-home --home /nonexistent --uid 707 --gid 707 phoenix-arm-format-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 708 --gid 708 phoenix-arm-format-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 709 --gid 709 phoenix-arm-format-two
adduser --quiet --system  --no-create-home --home /nonexistent --uid 710 --gid 710 phoenix-arm-format-three
adduser --quiet --system  --no-create-home --home /nonexistent --uid 711 --gid 711 phoenix-arm-format-four

adduser --quiet --system  --no-create-home --home /nonexistent --uid 712 --gid 712 phoenix-arm-heap-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 713 --gid 713 phoenix-arm-heap-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 714 --gid 714 phoenix-arm-heap-two
adduser --quiet --system  --no-create-home --home /nonexistent --uid 715 --gid 715 phoenix-arm-heap-three

adduser --quiet --system  --no-create-home --home /nonexistent --uid 716 --gid 716 phoenix-arm-net-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 717 --gid 717 phoenix-arm-net-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 718 --gid 718 phoenix-arm-net-two

adduser --quiet --system  --no-create-home --home /nonexistent --uid 719 --gid 719 phoenix-arm-final-zero
adduser --quiet --system  --no-create-home --home /nonexistent --uid 720 --gid 720 phoenix-arm-final-one
adduser --quiet --system  --no-create-home --home /nonexistent --uid 721 --gid 721 phoenix-arm-final-two


deb-systemd-helper enable phoenix-arm64-net-zero.socket phoenix-arm64-net-one.socket phoenix-arm64-net-two.socket phoenix-arm64-final-zero.socket phoenix-arm64-final-one.socket phoenix-arm64-final-two.socket phoenix-arm-net-zero.socket phoenix-arm-net-one.socket phoenix-arm-net-two.socket phoenix-arm-final-zero.socket phoenix-arm-final-one.socket phoenix-arm-final-two.socket
deb-systemd-helper disable apt-daily.timer apt-daily-upgrade.timer

mkdir -m 1777 -p /var/lib/coredumps || true
chown root:root /var/lib/coredumps

printf "Phoenix - brought to you by https://exploit.education/phoenix/\nEnjoying Phoenix? Consider donating - https://exploit.education/donate/\n\n" > /etc/issue 
