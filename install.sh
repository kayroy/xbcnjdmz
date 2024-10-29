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
BZh91AY&SY鷡� ���D�}�����ޮ����PD@  `	|>�u��6�B�Mt F	DM 	0�ɔ�O��Q�j4 h����� e5&h�7�=�4      MI#�e44P�L�h��CCj� �� �"D�SBi��m54i�� 4ɡ��4i���@24�A����� hh4d  �bA"�M L�S�h)�Q��4�4  ���an��ra���٪�8*�7������MW��f�L��mM�Q~��T�E��uݶ�҉h��=�،/b����c!���*I�ʈ�e�8mf{�鄋;���[l� ��[-�V���C���r��H/�HBG프���I#��q� X�I�.,��C5�֨��o_�V�Nk̙�@�}�I~�
N�bh���т"�zq=;S�D,��F*x�TԊ{���>�mlVm�
�y�"�L�\��OS�|�v5<��g�'5��s�V�)����V�[�e��̋Ԟ�f����Y���oG#·/�9�6Gf����}SC���#m=Z�}lM$��#l�(���`d+ua*C+�h��Is�*������k\��X��\`�Q~���>K�QWg�¤�nD^0�C巎���Cl��]��ُ��+/[
S�~��ֆ �<�ϕ��Y�&�F*�A!��F9�5�4Ěh_�5V������P�B���X��$����kKl{v8�����hȣ4� �����	����0IVŤ�FO7^�B4�Y���۽֒-�EtS��]`E�/�kg� �J,�%;�W{ ��8i�<�9�4m�^��n��0�a����?�1�晻d�����S����EΊ�G)4d���3���"jÉ_d���ǡ>	.s�o��0Ìح,�q�gČGҎ�6�$/?"�����UIĢ����3�}1lŧO�mݻ��uS��Of�ZK�\�](9/%�n�se�p�2,�)����T'r���8gQ�����̾ｘo�������2��q�6rUuV		/)Ҽ��ޱ/x�:�� +���C�v*��)���Lb�D�\U��#���[uEd�7�Y�q.׃X�����7H��F����1Ѩ���n_��H
̤�I��f�ԃ3�x/20xkK}������v��fm��흕�U㔈X�-9�Wf'-���z�t�H����F�F�ӹ�x�qq5z�]�����_���?��.Gu�_�0�]�Ȗ`
v�B�B�$7O|�P�{���8!*��\b�C��G���,�z�FM8�**`�gr�pl-�j"��➴��]ih���z�r�JW�²g`�y���V��AQ�K��W�i����WX-Lc�IC;��	����� �Z�<m��ThP2Lm��\��m�<&�F��w�`Wc[�n,�I*�M�g����X����cwP��yi#h̬�8��Q�tC��� �`#��y�2�<Y��5�\�|�ѕT����9�I[vj��b�}"�w��)6:Km��ŕ�%'hz�!|�im�M"�Hh�VW��}1%�w�.��9;�;���x�@3��hl;��oom��;�Ů�n>��>]�m~`�����O�fV3�Q�1��7o+j�
 �U�8H\�T�8AJ���꾕6�C*H�\%�)��H��:������0m!���h�X�Ǳ���;��v3f��!;��Hc�4�$�1���aNW{p��Z.=��X657��6&n�2m��#B*h$���3�(
�P�۴5pM��|�|��ވ,���e�Yg�&F�%�͐`��[W�0�W�}�!K�y�A�HG�5�%�@��	z��,�ڋ�G��Tȯ�c���bȯ�u�9��'�]���kMk�WF���u.����vj@l�WYJ��y�]kB��?����Y��&�-vH4�xD
�M�m��Q�
S��/�0���i�^=M�3�S#��OPe)�ڐ��&фS@���	Zpu�F���H�vt��J�S+�����-��a��~��ZY��P�g�4j��poT�#f�5����Ӯ7$�W��>.X������7�cA"q!$2�f[�̮R����9�3�rڝR�]�6P��*���
�u�AA3�b�G-�حE{���SMm((,�%��h�B?"�9DP3�2%�+ٜ���p�RK�۸/�����ғWXC+��각���eq]�3�x����,0�v�L��!e�#��bN�~�F�_
c��դ{3�����k�[��r�9@$� I0\�	*z�S�L@�q��T�A1�]��BC�ކL