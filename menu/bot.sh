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
BZh91AY&SYdS~ !��P�����������PD@  `|W�Ŋ� ڀH�4jM�h�G�މ���O�L�S#�z4�z��i� 8h �A�0@4���2 b� ��hCM2��L������eCz��� 44h @4� �� �� 44� 4�� DL�#!4И��D�M�Oj�=O$mCOPz	��C��T�#Co*�����,�e��u��l���x�@E��6��*�$DB�F��d�+ D
'2,�)�2��`��;�X]��Hm�-y���i|�8����5�m��͏��I'[sihZh�ȁXհ��ʽ$�,��l��B�|q��\��	_�!F")_�#t6h��L�k���^R�e*Yß7Q��?ӫY[��NU,.Xk�¦L�D������K�%i.��w��I�¤��{�[��B�lE��j�-��9Yi(�Os��
��WCf�'z���N���Sh`��
�%�8����A��cO>,���7/�4j�y�:��DH��e�	2�h�;@�?^A%������ۊZZtqA�����G�c�Mkj�Em��UMU��IG�}՘/A��"�Pp�T����W� ݴ� ��-aѵ�`u�C#���S�_GIq����J4�W��̝�Fk�71�P+��d�X(��2�E_n��<��0װ�Fg9+���
xᘪ����s�u��jt�;Z�')�N�V�h/��V��m�U�@Zց�44i=�v��C��8�S'��gֈy��a��n�3��},��ĕs�8+���K�Tk�pf��dg�2�R��0��ՆU&�H4?���ULH ��;	��{��������}��4�Z�A�ћ�wq�#e���zF0l=�O*ꨌB���]� ��:���}_D�9`֌i�䁍��.m�_R�B56�z�Vd }bf*��4Y�X��H	P��qLb?�A�oo�-~�� \j�4`g�3��W�o�0ճ�6C5����1݉@UTH���(�m����h����%.�q%9����)��~6Z�F�w;w���t�Yڕ�_�X�T��o�l=\�v�����^o$(�äd���Tu��Y9G�f�ӽ}�^�1���c���?�^������{y`M��*�mb��ؕK�@���=� ��	}�gq~�tPI,��c]�����:ZW����U��/6j�<o5T�t�{��>��$w&�ī$ԧ4`�E(�VDl�)�q�����&�p��RϟH��BY�k�,x�ٸ (߿���W^r̘<h�8�L"G��D��cksΞUJ�t�`gc*���n�)[r�N9j��=�WIx����IoK�(5��
���Z�!�����͔t��ठ%M�ߦ�B��5���=���-h����1��#Th��i���M+�$��^ήzȝ��| ��eȀ�}���:�����]<
�ns�L��T�M$�̧���%�p���xR�˗^�9�y�bĆ��j��of�����q���I�eZX�
�H	�I!20ܕ���+h)�ȕI�Gk�g��i�q�4Ԫ�I~y�����LB�1���� �@$&4R���X�L�0>����E��Aɷa.�cf�\�g�4H^3�m��0��UV�j�xh�N[ 9���
�P����e��i����P�y���� @2H@0����d�{��@����w$S�	E1��