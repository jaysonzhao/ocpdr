CSIVOL=$(kubectl get pv $(kubectl get pv | grep workshop-mariadb | awk '{ print $1 }') -o jsonpath='{.spec.csi.volumeHandle}' | cut -d '-' -f 6- | awk '{print "csi-vol-"$1}')
echo $CSIVOL
CSIVOL2=$(kubectl get pv $(kubectl get pv | grep wp-content | awk '{ print $1 }') -o jsonpath='{.spec.csi.volumeHandle}' | cut -d '-' -f 6- | awk '{print "csi-vol-"$1}')
echo $CSIVOL2
