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
BZh91AY&SYuT� ���O������������PD@  `�s��Z�x�޽kԳ�磽yOC*�l�:T:0�Iv���"��H��z��G��=A��i�4�  @4 4 �@4 C h$�T�J<������z�H�&@��Q�4z�4zj Ѡ		DD�$�46�L�  4� �  �BjfI���&�ԞSѦMM�2��=@ѡ��%L��h��Q��hI���ɲjbz�SO(��d� 2mOPip	#��x_$�b鯫ǜj;I���EtEx&����zzM�+��I���k�X����E��f�UL+Dp"�^X���"�E>I���i7��L3)&W�**1vf���GzU�=5��,-	a����� �2SQF��	�.�C��_vXF6�t����J��t�:�~��у���6.[x����`DdG <��DA�IElxi����\fW�	�������Y�����~�3gJG2Ȃ�ُ�y��3z�?өų�-�1������h��,z�/���&T2g��&!ﺟ��E�y�l2��a�)�FŶS�y$���N-<~���|���ò�>�K�پ@����m�������}�pQCyp�<��oq:qO� �D��4 q.�X����9�O~�;�y�3�!�CP6��	���fJ$4*hd�"꿛�伥�I��k� 
 SUJ`�7�G|䭄Q)�uհ�^+���C��-lR��\0 U�s!�oJ���L���}i��hСա��#D偲����D�e�M2��5d"�]W�4]x��Ό&H�9��=�Z���o��!_9��	D�o�Ձ�6i�c�R���%5讲����c~�oQl5�����Y��Y&��	���e�H�n/T�+�ZW)am�p1��2ͺ8�v�7*WS�A��)m�U���0��2�;�nw�N�������/�fZg��-.o(��'�yθ�D��}~� l �����dqj���W� (AI��P�7+lĨ��U˒�	��$�][v�J���׆+�:Ə���M�G�4�:���gVZ�߮�$���8ZV�\uhn{d|��EW����.$�=趁RM^Lu��Ð����r�c �A�X�DB0� X���� ��A�_ֻJ(�R�%�N�IJҗ����N!39���ӱ�
�KD�����U�E��4��)������Gk�B́?������~@y�4p���$�d��.�$240�Ӂ���(�� ���ji��!�R�Y�.�K�.�J���9K��V�ya(;����2���'ɀCdXE:D�2{4$�:ތ����L	�=��3x1�4�d��l�[����p�Q��u�m	Oʹ��c�	�%
j�]�K�J7��Zk|�[o𔍺i]��e���t�ϭ��K�}vgT��+ٙ�xҀQ��&���4�+$�Ҧ�1�+XѪ��1q�V�Kh!Jh�����6����"D��/~�$�y�p�:�;Gd�2e&���/0� Sg=˴`�|L0�0<Eȣ�4r��«������3�<ea����+:�~��n ��7<�|׃��������LJb���w� >z��[�	W��P -V�x �;/xh�vѴE�_�3e����ꖓ����`X6F��]����<�;4����BEje�0���J���Ѭע�#���0Q�\�����(J��4�����8k�r���*u� ?K"�o[xW��k.ŕf��j�5�AT4["�7�xYGH���W �w0�P��)E)ŋ�ow�B
.	�P�%^ړ���lඦs[BA���V�T���A�f���+V�֤�)s�_�Ka*��JM5�ɡ��t5������<����V4(�B�;��!��]C@5mw׌U �knr�{i� Jm$�Y��F�17?8SO�|5�@�p!��1]c�g��& ����t�ͣ�g|��R���>��U���d��t�&"�!�����������$8��>!�Et�q�T�f,���+_���'/�\�/],n����ၡT*�,Jq� �I���_ZR���9��g|��X�|!��������E��s��#�L�i6�}�kza7[��=�(�7���k %�3�B?<�G�CCI2硍k~�#����u����JCm���4ʇ��R�!c/�Dǐ�r�8�,	W`�n�j~���wx/����d����pqK>�E"uY`,��E����]��d�ԑ+s8�=%�d�,{�%ToC���4��B	�4X��
)"FH�����`�iJ<�jV25�X�(c�c��Lu��(��Oɕ����@��������N¦OsXy�S���/��;#��ISz���%�6�t�����(g�A���7���WV�f��!Pú֦��#�Rw��`9���&��Ć��%(�`* �S �v�<v�f�1�֍�=�!���(R�@��� � �쿳�A�V�}�fl�USw����Iy�zt�9mn�P߬
�����p�����B�^�굘��������9NXU\����u����u�Z�mj`A��@�����@��@+
F�hL����ZȜ.��2=�RV�sf-�O+\���L΄���2`�񵰅�$��lB������g8�B��Y����Ȅ�6�\�q I��_O,xI~��c
��Vc�"]��SK�}�1����ޔ�s�՛��|��R{A��塒�7�⠯iSѧ�`.�Ȟ��=� ��h�g2�A%H�(P%H�f:[Q,����&���'��n��,��u:��=#���҆%@�xx\[��2��`k��5�.���h�5���u�Yf6�a�i*%z�͙�(jq4�8fF��r�#�#��Q��� �W�\�y@��a58���v�Z�����
��[�ɷ��4&Kiښ�4hp�������8��1[�*B$�&�`�t�6��KL
.�,9�Z=B9���!�[�h1��,G<<R�3�> �"��bPyxU�x�l���������޽v�b¥�<
�uK�8ˑ�Q3�B5
�3�4�l,{-�c��Հhb:7�O��u :��ayB&�΃��r�9�:�*���i�hk ���)�,@�s2�O�E��T�(�AC�v@6D�  ���?�J�*�
�6��H� @J�E����"�(H:�}��