install7260LT4211
=================

Install Intel 7260 mini PCIE on NVIDIA Jetson TK1 under LT4 21.1

This repository contains the compiled device driver (iwlwifi) for the Intel 7260 miniPCIE card compiled for the NVIDIA Jetson TK1 Development kit under Linux for Tegra (LT4) 21.1.

This is has been compiled against the stock kernel: 3.10.40-g8c4516e

The install7260Driver.sh is rather brutish in that it installs the needed firmware and modules as needed. Because the GPIO 191 signals need to be manipuated at boot time, the script also overwrites /etc/rc.local.

Modify as appropriate for your situation.
