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
BZh91AY&SYN�| �߀�}���o�����`��7ܚɪ7i����ol�F�"Z�E�T���%fjzi2�)�=4�24� 4�@ �  h42i�M �&��@  ɐ��駕3S�6�@i�414Ѡ�#&��i�F���52�B��OQ�S�4zG� 4�2h �&�R&�� F��0S�5I��~���OP4�~�$ �D$ؑꞦi��z�OSA�N,�H��('��@�0��ԉc���>.\x7�kw��_�H��1�˕��F^��hC�%VIQV"�dX�5Jp����k%Uh����j�
�"�`��|�����D���� ��
iR�x^�4��Y�.�&���իP�d���3B���=?���Ԕ������ϓ�}�5@o�o�lV�cu�8/�dA?��S}9�|&�98�c�'g��hBpiX�#4A{WE\إ�OL�-=X�(��E0���&D@�n�%
h@рؗ����c6`���p��v�$��w�ԃ��')N��}��A*�J�WrX�;T��� "�D&Mm��8�c߮����=X�0�R��Ԓ6?�m��/���NIX�J{>۬P����Z��~��4��pc�Q~�hg�f�qI�U ���{7�9np�����3Ƨ��L[��<�ܔ�،�^�O�E,�]�mia��RT��GA6��H��G3j�����a���Z!V�X�&G�3�8G�8p�g�i+/�C����[����̈́�Ǎ�� M�
��
B�"F��*H��@[�IҨ/ꃟ�d ���Gv���<�i5JC *YC,�\&��:�5,*������%�m�-}2g�˖���C�����4{i�kZ�ňvJڪ��A}3�<����3���YM�*��E��"d��@Y�d~r��j�2^�n��s]�צ��Y�"����-��ݮ��,�{g!Ίh�킆S�>1�W�!@?)S�^�e����$N:����?8q��� }?�~�?�&7T�RP!��X��sJ)V!t`�L(B7�ڠINI¤���cG�mԿ�|�Y%��Xz���)��^���-+C�[b��H|&�d���=;�10Vվ��lh*؞�v�N�C���M�<�L$ZN��d2���A߱\�����'��ECLD������%��M�S�zW1
��\���+�}P���a�w����7ᑲ�6�~�\���i]��[�>0./����5g85�<��U��ae���3%���a%/���0�Ccu���8(��artLbn񆇖S��׽	.�A��K�Z=�PE�h_��P�$?gn/[�U��Q
�>g�n�S
�ɓ�D40Z�1���َ�N.����5	J��nVZ�q�s9U�d����m�3�UҔ�\��D�vعF�J��,YM5�N�i�d&�
�$�5�d��ﺵѽ!F����w���b���d/�$�cx�DF	���,� s!�9�ږ�K����AEN4����<=B�1�cO�y���)i�E!m�o+�B� @�F����0�3(�6FD}g�dpʨ������\jeO1�s��5E�ы$Dl/;�Qϩ~sX��&����~�~�RT�l�\� ��9���H�<<�9�8�̄Gxd~_aE�������uJ��D9���'-������Lld�NR�m�j�H}\�y��d+�L�٪Ԑ���DP�}Ξc�b*��F#�G������u��{��j��΋�g$�3㴰h�T@bC��.��faO�zZ�9������&�@�C�����_q��P��^D@GgP�(-x]�q����01	��R�l�+��O�cM�GR�2r�bZ��ʣ]R7 ��x����X��Q�8��G1Nmz�Mg��o���Lm��m�w
���BGe���9�5ܠ�K���&x ���._`�C�ЦA�z����&%> z�<J�:��I �I�����U��G�!���+��7,������YH2�G�IjZZ�*T`�/"�O �C``-0*E�ӌ`���M-���Q�SZ��ܔ��	���'�F����P9�XO����{FU�`��.`bB���#)5�+8[�TZ�`La����Ct\f�衝�fB�,]�����ǨtD��T�6#xk=��a���,b$�AQ�q�w��p�Nƾ)�:`�Ө;��1�^�Qx�R��#��@�2hKjI#��ł���i&��ֵ�� i�$���$��(���J�Tl����Z�PB�%�ՐhI	�=؞�� �uB��1E��	����L �A��"A��$��m׻�[�NВ�������L���e��B�_݂�~"�.�p2���`#8$��	�A����ع�.|� ��h%�քJ��a���/8-D8�:I��E�3�>�LЯ	�0���fr*%�Pr	#`�����6显ֺ
Ӕ8�Q@5h���)�����@T�ʁ
7�fX�������ҫ,�ϖ	�X\F� �59҉df�"lt@����0ە�N�S6��m�Qd�ƃ/a@	QB��� \��ڌ��#�4�/ao�
�X!�a�kZWV\�b�Z/dW<�	�" +[Vm��[`��Ʒ�i@Fs $/��@�-������FᔒT,vn/Ĩ��!�W�;=�Gu�6AAk#�ζ\A�9r*܁]�=�
�h	�k�0a/R'T\@O�b]�x�)�ѧB�(5��I+oM�����m�w!z����W��S޹�F]�e@�p���g�$����t���� �@�����(�H�&�"�܆0�:����QO�oP4u$��4�	����j4� 2�ڲ�&d33Ra���� ��R��C�N���$�1g/WZ%�j^S0k\7���hX\`��m�P�ɣ�L��.�|w�x8M�-���Nd�!��"C2/Rӆi��	6F����q�&l���ϖ�C�B]���< �]a-�&��b�rp�D!o��Ch�G���V�6޽� �ޤh�3uhD@��}���%��Itڸ��1+0�����ۼ:�`�j��j[薫"bY�%�@n��}�--ph��U��"�y%��GxV���&J���WI�eL4%��pR�#Ŋz�� �XD�\h� �CRb�`�|�������2K-�nB^����~9�M=yTG�;
���� Z ڀ9m&MY���}����X� =�ԑ��Q��P25��q[�������:>r���t�����`T��j�x��/S�U�9I�B|�em,�n_�>���%��q�Yx�q�'��� �Q�FIcB"5`��9�D&ȱ
�?�*P#�S!oY+-2&�+6�Y�e�:���U�xRYJ���T��ݪ�«�d�:T=�|i�<O7x�1v�h��Xm�^����@ؑ��p��V�]޴�5����"�(H'pݾ 