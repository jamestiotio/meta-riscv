# Mainline OpenSBI supports the C906 out of the box, but it needs a few tweaks
# and a new reset driver for the sunxi watchdog.
FILESEXTRAPATHS:prepend:nezha := "${THISDIR}/files:"

SRC_URI:append:nezha = " \
    file://0001-lib-utils-fdt-Require-match-data-to-be-const.patch \
    file://0002-lib-utils-timer-Add-a-separate-compatible-for-the-D1.patch \
"

INSANE_SKIP:${PN}:nezha += "ldflags"

# Support fdt drivers for AE350
SRCREV:ae350-ax45mp = "22f38ee6c658a660083aa45c4ec6c72f66a17260"
