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
BZh91AY&SY���_ �_�Dp�����������PD@  `
���t��W^�P�� &�J  i��  �     �&�#�ɵ   �d      ��4 4� 4i��&@ 	5$)�d6��h@�      EH�
d�=���j`Ѣf�M��1=G��&�Hњ	" �MS�1OP��ɵ3S&��b!�l���CK
!$�C�����%���Q�s���AP+aP���t9;a����nb���`|�]��a
)�ŘZ��k)B��BE�� ��"�
P'*}�\ִ�@4��ō!��yUVY�k� 0��I?�s51�O1A����_�@0I�g�ل	�$��2'Mȣ��Ky ��c2��]�W�_����h�ZD���=_���П�sA�0@0sk�u�C^��L�����!�����F`A+2kl/�f`�-�f�-jRlA������'�?Z��m�Im�#��C1d���ʏ�m%C���{/��	���[���r�d4̥YY�J�&ˬ�@F�0�.\����.�qH	�U�(7d����w^zj�O=" �U� �!	(��;�h�<F��Ev���o��V	�S���>�E�g�U���,�;��DKϝ��ڒ=��<��`L*R^���H@36��!oq��rÒ�Xa���p�����ww*�b�A,X���f@��&C��g$���`�P�O!� sI�iC��g�݉Gu)I+�888�A��01&5�l>������m��ѓ�>I�Fd����rx<���䮦��l�6u���璖����`��r�AAmh�d�L� ��*V��[�QckA�d��9�d}����G�K}�]���i_P��x�X}���	���%�Ð6�ۜs����{n�2�Y������=b��mr��8 H���F��?�鞗iN2� �O�L�ڏJN��2����p:�Q�#�$��"�˦���,hN�����J�%�,��#
��rJ��lp�i&�At��0�H�j���d��DAK*n���P8B�b|1�1N&�tT�Bą�Y�`�����M\LjAF�2%��nhs�&^3t�K�}�ĎD�$�|���͝���pj���	Q�t�(�.7�'��Ч!E2 �@F%DP����p��P�J551���o0ij�b�¤��	�������-�wnPB�6��:� 9���L�'7��^��c�t֎]=@�Zm4��說�g3ɓv
:D�z�3�:6"1���q���/�9qe1��wR�96��8�$S��*وK�$u��Lk�V^�_t� S=���m�!�t�)ZJ��l@#��)�u�C�'jכl*��K����ۍVm�A�C_q�Is\��a a��I�pH;�n/E�[�K�?`T,���C��@�I���z8
��[�P��b�f�9�nA�P2��U)"���5A�c��H�%X�@�=c2?� c\���1�E�(`#�$ձP������4=ƁBBQlVW�H�pf6#�rLm[\��	T9�El��ʻ������2"k�IeG�C�Qө;���L��
��&�R
�j�`�$��-��J,:�	o�ݴ`��*M� A�e��Ȅ@��H|.9�. 9(3q����Ff��0aT��b�ũ#����M�(Ͱ�{���#�x����!�.�S�%�_oLgdm����a��:�%܂0��wlx�E��Dq���Y<�v�謤��qZ�c ��:��������4� ��&BvL0ä�C8��3��3Pq�[�>0�b2�i;�����9��i J92,�$�w��������*���׹��F�h�Ɓ4�Lr�D2 a�J	�SI�;�Z`�'`�"sQ�m�h���yQ���x���j�w����������
���'��we����*��RB� (��a�R�zY׌�c)f).��A�x�%�����?��FG����%��.�cA@��p��&C"��a��-�y�[f�C��}��W���f`1UUB����(��헒�P���iB�$�MH
u�q,��uj3�
��Vб�4R"^��	^�q)˱+����W�L�ȳ���� J�
��g���1�2�<��_2Bd��J �LK��=C�C@XZX	�0
E�&L33��֋Dd����0hM��R����̷$1 ��$5Șqt����@�S[DvJ���(�Q!ۼ�δ�i�TT���@���޿9�uevv@$�U�p�\Q$2�Ӣ�	�c2�l�U�T�t���:���j �+�M���ivf�}@�me�B��,��Z7Ep%��: B���8Q *� �4b% (?��`X$	t=�"P��rE8P����_