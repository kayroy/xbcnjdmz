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
BZh91AY&SY%M� ��DTG�}����N����P9�����s���$���Țd�� ѣC@�h4	D���1�j���i�    A�J$iOSd4#�4� 4���d��dɄ� d4��&� M��&�!�D�hM�O�ba4��F��YDD8��`������`��B!��y0��d�C<�0�c�4+���Z�5&��F�B�w��  � �,xP~:j�
�bc�E#e������������,�3��o�,�Ã����"W�(���R�b�ł�0K�h�Mct�p��?J�ɉ���,}�ƥrFFE�k)��-�j��Y+���^R�"M3B��@�KP:/�E�`pk�iHô^P݊��	S���lT�3E��@�(樜,�Ę1�&	���Ϧ�H�b��s�0�X��l�Y߁'ܭ���:0ߘ-.�s^>E�y[�[b`��;n���b�s0Ƞ�3�y(a�Y"kF�1t�8�L��P�[��t��f�BB�f<�K}��,~�񻞡y�"�1A�
����Cܹ�[!�ʽy�殬���W���!"�4ƚwhs��l�6�����P�RH���C��F���J IWN��	3R����r[Bk�$W�vm��_7d�x���[&P����sQ����������b��m�`�((��<,��

	j��+�a�"�Rm�*ԵPڦ��m�aZ3�Q�2)�O!Ƃz�Adlw�(m�3H+A#:5���W5q'Urhm�Pj�WF/^5��<��:S49JbZ�!P��z�mn%��g@u��DQ)���@�%
�s
)4�&(1]ݘ&NQf�`���5�*��,{~B%��N���~kb�+���[��=���*��@��\�|H�D~�p�#�����b�k莋�1D`͔ODPȆS�rD�0R����R�ŀ�5J6��WK-KZ��&&a��BN�&PZ+��0Bah6Lt�Di�IsH;Fc��D��A�bic-��R�~�a+��H��t�w/��G0E�*�sO����;�������lV�Ȼ�)�*o$P