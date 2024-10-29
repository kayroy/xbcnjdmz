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
BZh91AY&SY�� �_�xX�����������PD@  `
������s\���� t�P�&�x���1S�S�=Si�T�3SzdM��OI�j{I&4FC  )�S�����e4z�iPA��    �h�hh ��i��� 2�A!I��6=4�   2 �M 4 8�h 42h��h �  �H�4i����)����S	�ѲA�z�>W#p4l���]��'{O5��^l�l׺ˬ�����E��2.ؾ�}���VZ+���4��'�Ì����z���k�&7	Nn"'*䫟{m �ʵ�p|%1;ԣmRFJfE����ɭӊ�1&�U@��������X�S@�b	�����F�h��B���pe��6=��v��G������U�>n��Te��Pq#J���_�g��Wb��w�����UʩL�YK��֥Jx���"����&���5ߤ��yv:�Ņ���Ԯ&��)02���dU�F%�\Q��0]�������ۣb:ᬹ@,*Iνs �8h]X�k��,>g��ְg<��0���\��9���<\�.��,�V��J��QE	� �a����)���
[�� �K6�c��p(x Z^.E�^�	˔�)	�b�m	�qι^eec �Y�T@I�)@��s��Ae�_(!1c�=�[}�<Z��n��}�F�)x�z8uy����?%��]WkGM���0u@b�i��g5��pMt%gcn���z�뗁�4(Z��@I(���f�m�WA�nI�P���g:��69(�#�o�{궄�4m��lly#����B_��� Rn�X\Z����52����
!������r�Ը�F���Z���a��G_�rBk�ub"*��D�RMW�Lؤ"�ُj�z�ٻ\��s���L9��wF���u횲%�Pp�o����3�� ��% F:ڨι�3Maq��RLd�XW�ց|ؗ�]�	V�f��ϒ"�#��"FnzT�$o5�ɭ��U����^�}o%�i�11�`�e����$���Y���=΢���F�D��.�4<���c�s�����I݀���4��df��n�m��z"����4[�Zا�%^��0=��xk��Mx�U��l<��v��HE��[+��;�ծL�	�#-�P��4�|��LCI�F>�k�]���M�*�*���o%���sEӡvXI�W�+�o���A����#|D�F?Zyb_��|z���Z�ݻ?�E`3P1:?C/Ĝ&��H��W�:|���@)Kf��
${=�u0{IW�/�kK���"u��-�a��s>�z-A�\���%�)�`����Qh�G �.�x��-���1܁�]�T�h��I�RٴkH��Ƥ�#�Le�����Zà�6�
T��4_��qQH��0C�rr�p2û�����8^���q�����Kr�X�gīi1�aU�ߏ�?Zp}�%��4����7%0����QAru�l�@���b��5�l��o�;� t.��sJݕ(��Kߑ�����fq}�3�j�s\� ��u�b>$�H(��(&!|�p�џ��ڤ+�AIn�����0��8�8�6&�m�5��	�UC��+���0��k��Je�}9�&���IF%"��Ԇ��&|"+���.�Y�6Z[�&�ʭP�I�r��q	F 9ߥ�i��i�ͅо��&�[�`�[aݨ�PW��� VV��e�ܻuE�Zղ���M-�mm压j�@��R+�q\�<�J,3����,�V˖u�����*��N���`X�U$.Kwf��9�p��Du*�;��/5+����L�J��p��7``���2`����S��Z�&4p������y��M`e��u�G��L��[i�!@bt�֠�� �6Ǵ���3��h��cɥ���N�t!�!�$d[��U�W�����kirńdVv{�0UV %]C�-f�o9���&y�Ki}���J�fUo
X�>&m�e��R7�@c����ў�b�۸�g�9���D �ֆÞYd�D��I�H+�TX	�y����6�M�bܽ*�<��0��/~}�~3,'��p�XcK����i;6*�e�Giߵ^��]u�F
0���V)!/*(�)J�+s�Qj@mZB�Z{�͊�:�F	"mJ�� =�'ޔt�����9gmeT-�be�Y�� �R���	�f�H�U�: ��KY̲R4d	s6�G��C9Ǭ$4D�4�'��r�1Z���Q�oEg	C�K�!dVr�R��$SzפԦ�V5&�����Ԍk�jȎ,���)Z@�B��o7/_>ǝV�e�s3��qZ�ή=+V���l��EyF�/�$ّ�I�H
iԯ^���V�Ļ��;�Э��.�-T��~d^�q<�Ρ�#)� 0A�Qj�hZ���8��i��5D;!�d��D��I3��+bS
�V8�-�Ђ�V2�PPZ��(�,X�My�V
i#�/>_�-���tx�T�E�<���5h��n���� �_���k������RIO��`��^Ti�D趮���-<w������[$��k �2�d�8ncx��� � �$ �R��@�$d?�^�	�0���)����