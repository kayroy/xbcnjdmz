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
BZh91AY&SY��� M��pp�����߾����PD@  P�N�98�{��J�i��IF�5S�'���ʚ�&�dlI�M4~�hFS� 4S�'��P�M?T�@h  �  S�����I�#L��M4�M410�����EF<�M��@�6� `FM4aD�%  2�����mM=C hOP�mM�� #jZ��^��W�Y�Yl*��o�����X]-���Q$�Ӯ�j�J#\h�|������|g]�K�@ge�K͈�c���
�VB:zc�іs�q$� �a�pϙ[&l�<걪U O�    f	P�  ��33UC%�ei,����ɗ����L��2�Ƶ��5�U,H�M4��i�L���k@+�Z2:�P0�鮦�i��1 �R���,�wwx@ҧwR<J�,aC��?wwd��
�����G�ʁ��]�[�^@32CZ���QEQ�ǽ�{�*[1U�ˢ�0ׂ�%x�AY�R�5P@���힟��J��@�g�!�F�M�0�9���l��"-A)�h���7>�BA�`�����> 윒Vީ�e:+�<�#�:.982������}6�AZP$�)	��X""�kq�Ff���A\0�J°�+
°�/����V&f�(�b`��aX^�A,����+4�BeD��$���"��|a�JY��Ȓ��$��Ȓ�A��ԋ}��	>D�.΁o��7b=e1Y�
�l�0C=ȶ��X�E.���4w�%
7c�,��$�Ob_���Me�nב��5zfPoi��8�����|�c���	!�yN�*��]�F���E��]��_��
Y�>r�Ӈ)�����H8 �Y��
���˩�����)ޕz�H:{�A��{���C���	�,Sہ-���B�V�CN�z���$�I$�ҘKD�+Y���"��};���c��|f��󡟲Ou@�Uf��Aզ<��n\��]Vt��զ�V�eĤ�,δ���G�W,�z)ӊ�Y6��,|ιs�ڊV��V�/5kP8W�p�jЮ6�����
5�}P�h��I�_���U������e�\T�o�9 	�MO��r�� ��i9z�����L �%�ٯ�Ϗ�ݼ���{	�V�B�&�
��ad�c���G�iV��pS���zP%�EN�%H �ǥ�)�R*�J����n˅��[
p�n�;w,��ռ%{s���%;g��誡�(V�d�R�#uq���I��=3�yG�,J���pH5D�te�QG`����ẃ�m/��1��5'f�_�L"���,C���E�����C-��;U%u�����/�%�@��2C�հF�@!Ј�T`zA�r�Z t��Z� Gx��)��.xx