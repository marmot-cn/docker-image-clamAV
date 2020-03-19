#!/bin/bash

echo ""
clamscan -V
echo ""
echo "Scanning $SCANDIR"
echo ""
clamscan -r $SCANDIR $@
echo ""
echo "$( date -I'seconds' ) ClamAV scanning finished"
