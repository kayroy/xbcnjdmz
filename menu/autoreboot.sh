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
BZh91AY&SY9j�& I_�pp�����߾����PD@  P�N�����w���HJh���&Si54~�4�40���4zC@i� �Q���j=M4�Pz�� ��� ��"{QU?ȡ`�  �	��� 0�F�MЀ� h��h � h�F��FCT�$6��f����mA��4 �.Px��f�_R����a�x���.��.���I%70�B��m��y7P/��Ӈ�s��\b��\_ct�c�w����'��SFQ�Ӊ'�x��u���y�yr�l����$�I$�Ib!I$�I$�J�I&f��.�h�9��7w��3Y#jf��5�#"ղ�1CM4ۦ�i�K�/w<��� �Л��ԁ�(o��<�=�{�J�,���&���ř�ӿ�Ȯ"���c�
y9؅G��LHRCK �Ab����9��T�p��gj��c��,����=�{߱j�/M\�7Ѭ����%}9AX��h	 G���y�/�P�m�@�gLC���a�>��tO Z���@>��;�/�e� ��3j:s�B�~I�-r�`�R#+U���v����َ0�T�qʔ��Z҄������.�[K!��P�)��H�`�`���yԈ��T�S��٧9���;����9H�������B�ͪ���Q�w�
���(B��B�I���ՠ�q٥*꒐�b�2�1Dq��Q���lܰ:�L!|\,"�S\�r��2��!@�NH^����na�ZW/c�1�KC�&d���A��SJq�e4��ݸ�gDf�����qA��3�۰���YvRa��%-Չ�1f���E6��X�(r���_���fY�S���h9�6iA������ij!��t	�S�]K� HA(_��޿2I$���I$�I��v$��6Wm �� �Eu8T��u�z��I�:D�U����p�Ao-$�l'�EBd(�B�e��G9���z"O�GۣUD�j#�Z�T?�s�vJ����m�a���_p���|l8�B��ڣ�ٽ?w.a�V�z���ov�W�fRcà� Ɲ����4�*���	���RˌX`��o��N^�77��sW�K�j+k��:m-��"�����y8�s4^��f�m�iT6*��B�,c`!u��M�B���@�O"AR�$�6Q�vM� 2]2'�]y��%/NA�,�U3c�:3X��/>Y˨͍�Nؾ�C-���W�h�"20ky��QBF9�u2@5����h�^���u�|�R���%�%5P��4���tV�Feu5���2o]�f�^��Q^�5��x��GF���C�F ���Tu�.
Xv��B���)��Ua0