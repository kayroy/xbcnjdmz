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
BZh91AY&SY�@� _�tP}����������PD@  `�}�s��]��G�� i��'�$&�~�M�i�d��2i�S�Mѐ=CCL�z���E=OA�2Lڧ��4����    s&� FA�L1 Ѧ�����&%j#z�OQ�='�ڀ  ��  �$*y52dd0Mb���F ���(&�MM��d�Jy�m245?P�4�A��hjL�R�ǯ��p+D�7�Ъ&��������Y��E�F5�uh|@��k���	�^���*���gf�����#k�X�ˢ]�S�E�Rar��1fU���T*B9e�m���bz ��6�� F��,�	
��w��5�ϷQ���a�	��$�]�W��ǌPbmxJ�߀̚]����`H�f,6��g�6���/��/��S=��h�vҞLu]+9-��dk+� � qW�!�Ǭ�Xt�l��x�$�:�]��S�i�>p�̎�꽟��59�FC��@���_�~�h0��H��$є����j�l��7i@������͒A�����o�]�6$�M�b�W:z3�@;���bPd���v����N�ubٷZ8�C4�֨�a�6JGn���Y%�2�C�*���B��!`&�������hw!C܁ @=G!B��b�!���+�MUSz�����xPH:�j1�vv�Qk����P�J��^��|�f���a ���Y߉�*�:+4��I��g^,������Z(oH�e5s����樼�`�Ph�(#�~}�#C����d ����c��|ԝ�$Bs���Jׄ��2%��Q��)��`��b0����\O\f���I�Nn�.�.�b�>1N�+�p�S�Ov��]G���J�D���("	/؆$��F^�䄾��g�}�8i��v�a�Y�Q�(�����JT����_z{ā��Б	�H-5p�x�D|� k���40L�4�5+�ItF�
��BT� ����%���쮍')�ef�g��.5�
�- �=���3G>���U�	Z1�/k��Z�Oq�@�|O��Ok7��vq�fFX��.c4�rz�*{��m)!�A�t���u�_f`0&�H����I�2�S���3E \ ÷�"!�<����Z+x��+��/�u��L�#����f@�@��&�)�WbZu��2L@؃�QX&.�^����ޫ�H�xy�޼�*{�%� ��ib�t�����RJ�p��|gH��Ӳ0uN҆�P4���7�l��6@��!Yٶ�A^��ʗ�[�ZD�-��6C��z��Cc�m�P��U�T
ǄK�ʛTW��	��4��E�(��D�C
��C�	�0��F���'ŊEIy��U(�_d��ݲ�7���oS*E\(�y�Q>��w���Q���:�	H>ٱ�k�HF�ە�1Iؘ��[�c��\��Q+�HY��5����d�qt}Da��+2�,Ri�*F�(x^���:��;��wk�<��Lb-�4�lϪh�^n���l�|��&I1M͢i�+�}-�o�
��{����,�|͚li�:BJ%�t �<��y�W��9�*���_�ZG��1�;*D,K� 0�R߂��{��4<���]=|�	�A ����i�G�KБLզ��J�6�
��'�=;/��60����~~�汹��|��V�f�B6�Xtk�ӗNhE�&�1��m�6�$�����=���C��5��ִa-v�0���A��DoE$����a��gI�/29Y�Z�	�Xj���& �>CEH0��(�L�L.M�/7l*�D� ^2h-���%�W�aK�&�W��o���v�Xm�L?P��2��%t9Ԭ�*+�'��Ԥ"�E [�h��3�W=P���j��R5�>^�FT@Z2�筈�7rB?�������1h�'�q&&FUR�%��#�(^0%UjE! a?��H�
 ( 