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
BZh91AY&SY�KF  (߀@{�>'��?���@�\�	O&�FѦ�O#�F���z�z���&��` &	� T���I��4��4114�@�C�D�zO�2j���yO( ��H�����_e�G��D��\�yӈp��Ք�Ty�vH`�����:htqW2��}ZgȜ�`�ruN�۴7������dD��!�2�!>-[r�M�G����e�@
V�F
�@=*I�e�
��I~$�v!M�*XsV�C�e�I���
ơ�m�<�!O��*�h��a���hL^���%gl(���&�ė��4���U�@��魿�tE�/�@���kJJ.9�B�U6L�뺊F��1u�@��=Y���BԾ�GEs��B�df������tvyz��w��^�q���Ȑ�NY��N�`'<H�i��Ac�C������Y��Ms�� �,hM��R����3hM�* �\E8�p�CK-* �r*�U�%��^�Ab����l/H��mR���(r�(��0m)[��]�p�1awB5MR������ܑN$.A�р