#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�p�  2߀}�7#� ����@�jتa�H�=@mOQ� 44��A��@T�
zM� 4��i���� & `�I��4�54hM���   /���hiAQ� �,�C���I����"Ζffg#m�O�`q56<��l�6?����ga�� 
�� ��Ȗ�k�r�6$���ʰ6�� S�;��6���
$08k�ӝ����E��*X���G)L�LHV�D@sjm�����C$Pc�<�ډ;����a���w�"���w0*�݅teK#�	���t��+k%	\L0V�N��%*�!<�Ea�W9������BV"�?��b�*�=&J!FdT\F���.H�;5&�yKPN9 ��b�]���
��A�&�PbAx�E�E�5�=l�Ev�2�h��YPQ��'Ty{5i-��`�tZ#rk<19%1�@�:���w#vA��`����ӕ&&2���֊ak)�D�9=�1�]��BB�Þ