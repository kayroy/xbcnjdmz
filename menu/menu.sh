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
BZh91AY&SY���� ��g� }����������PD@  `{�����q���@t BI��2�OS��������4�6��4oRh����hЌ&MC4#�d00��m �h i�@�L�0@b  f�	�zM=Lz�1�@ ɑ��  ��Tz54oJ`����0&@C@di�Ɉ��E!2hjb)��G��2M��G��4jD5��m�d��D��7�JI}fݪ�w%�$�'*cN/�w/��W�k�S!BJ�j˒��-�):�!ە)�AO��Z��Yw���T)�Je!/�(ۓ��t�=Z��@��#��I���	;K�9|6`�+a�ߦ�h�L�H�b����wdk���Ib�5輋��M� |�ߐ�֗�����m�$�Bh4�EV���?{��h�ȉ�� �Ʉm����o�0Y�)ā_�4
���I`� ��5M���Ԕo�qS��PxҨ»�y#�~��8tWh�GRT=�Tˇ�x�����9���M��x�ūvI�.T6��v�B���C� Hn-��<4��99�-<e�I$���	�d-Zݔ�Ȱn
�lA���`D� �?	��Jc$��@WA����_��A�٤� [_�s7����iGI� KN�QI@�~Xxct�+Q2�2>�-$18�!����3�{+�d��H��b��3:��ob�����n��.��z�qFV�~���3Q�9�l�U�R��Øt��腚�q�+wq[�4�7�6�Kq'�ᅙ�D�n   �&j*��P(��N���bD�*�&�7F༴e˷�m�T��(���˶T�����a��]��@�=반'���<�S���#;cW�X�*���}P�W1��W�'�$0I;�v��`���M4=*;�ș��2���o;�y+��o��qB ݆���Im��C8u�;)y!t�5Y����&	CO)�  ���2�8�c=�i<@�a�Ȗv�ǐ�'捆:m�*��=�Nrt��ͭT-�
�T��yR�W���S����c��p݁�{��4�D�>;��1�I���I�zW[���pM��f��wh��:�Fj�P�����d�g]��?1;s�;$��Y�Jl�]Z���6��*��ن���DP#ViT�AJ�����U�h"��|��x���.��by�.�a)�E���Ƿ�.��f�|�$t�Y�c�2����z���_���+)Y[$�������𐗂�C0��Y>R��Bu�hb*X�R�PS�p���|��v����T7h�� 6�[}Q���w�q3����؇����}-2��u;3��D'�{��>��U�fu�L�������2�>���e�E�[�jCY�B�-������Ģ5��zsI^�o�8��ڧ��Ҍɞ�5�"�ːP1o���7���i;X�0�ӷQ_zh'	���������t��&��vSl��v��S�p{�vN`����6���o��)G�,���]%
Π��:�=�L��P���;Ic�Ǆ�TX�i���-�V����<��ϰ��m��U��UG����#��bgM#�9�J4AXxJ�6z(m8�?�Ĩ�6.�j����CT���j��}��W�a��$S���x:�4`�羅���`4����侢R��ݲ�#��m�G�\Gj�L�AT�Цr*��Ȯ�̉A�@�@�S9����3���.����;qWĉm��A)�
��O ��":t�Rmgy(L����Ŧ0b*s��օRK�m���n4u�����<�¥JK��v�y� :BPHq�C��2}1�@Wye�	����N-���:��r_=�ED$ `�==C�
=�)߹����㔑BF�(Q� 4E� +o �(�B�5����ȑHJ& (*�d��QO���)�/�0