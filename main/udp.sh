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
BZh91AY&SY�q�  0_� }� ފ?���@]@ CQF&ѩ�d�6�ё�A��   �   �   �    U!	�#F�jeO4��������6ҟ����}��I��Y-QY���B�z����<>ҟ�Ի ��p�����'�%d�p�5"!p@/f��6�Dx�8�F]PO\��$������,��M�U�~�v��^�Z���'��75�x�3~�ذMD�1hiI�v�$^���y�Ef*�oQ4a$V��U��o�Z���}P�&��{����~z-^mC{�ޝؾ���o�׷A��EL1�ˢ�l8R<�'����hO:De��FO��{��x\u��l�*��w95l�}��T��j�(��$>N�Mnζ�i6��c4�5f���Зr�����bP��}ʴ�-��R�D�J&�`謽b͑�K]Q	8E,)��(źP>�����q�5!6i(�[[S&�q���S2����Ɲ�1b9-��\B�Ȓ�ė�\�4nkb��E�RN"Mv2in�"frF�W%;�B}lG�B�S�~�_�k��<�b�H�
#�<�