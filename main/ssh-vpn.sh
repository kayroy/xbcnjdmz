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
BZh91AY&SY@�z ��fp@ }�����������`m�ޑ,�ѫ�U�}pk�АPh�T)�(JAۄ�JyOiP��S�ʞS��yG�C# �0 z� 4Bi��$��LS@  z�     �ORzM���4�     h �	4CI�I��=��d� ��   RR{Tީ�H�d��@     �@��&���&�B����� 0���ҁ�Z�E�.L�f�C]=�ǔ����d0;6y2�6�s�э�Z
�ʰ�ã2(A���f����e �7��B)rh1L�5�*-�6��IiB� reBC$������b��eD	c)��w+��3��i5U��`w/����Se*S��`�7%oj/rm���g��g�G![���Z����9��ͻ'���@
�%�����m�$cF�:�T��SXt* U5){��X��A�Wbf
Z�_g�5C�ճ�me"!��1�:$mE��;�5{e�p��M��(0�䥺�C=ή�>����q�3�ǎ��0���pt�њ��2s�95Gg���&{����Yl��9�����h��0}����|���#�ʕ��P�\�
�c�ݳp?���/�*��"�sE�D�_-6�t���f̏�*����3c�������u�o(p�j6"\KdF�)�P��sT�`��y�&�.@�0�F��R�v��m3t��&�����G8p�4\�H޾�O�ݑ�%[��L��6ԥ\vs�tX�y�cO��/(�P/��p(��Bx%���_O�6����M��ݏ�^`�`(�%W!ϣ$U��3��Kc��� � �$[���Ҋ�1
�hX,y$B��>�P�M]�	���M�,��x4X]���ז4_�4�;�E��P�,�8A��H�r*+7$@V�����C�O|�W���Ey0�ᮆu�|2zޭ���`�J#~��˙�W��ll�)HE6$PI�� ",�~�L�I-QqS����M�8�h�ú;R#�Ц��Yހ�T�sH!�҃(����(;�1P���3]na<M!�Du�7�	lk����)�=��G\��)�ܜui|o[F�PBeh��%*�H����ұV��,ixܑ���DQ:�=��-KjD,�dM%�*�@��d�bHp8��SI�YHÂ�`��4���;	��1!�76Y5�\9�<g���c��]|�ߔГ�!-B�	�\̧̌ �^��l�CJN�^^���=�5���8��9�m�Y��5�z.#eϼ��>���>n��o|EtFZQT����o;��_=��Q�,�}�|��W��k8��"]������bĺ��	�r���6���Ԏ�7Tw\�bb��Txm��HL;3�e�ؑ{3�q1Bb��A�&����3�P���q���� a�D~b�YTxV�D��	� ����z	����~�!5�A��-�������5G�E���iXrt�&+�ܑru�R��N�/�3�b��X�/ǔ1Hd�F�����t����LS��E1 ;�!׼�ێ��0`Y%B��*D$�D7r�.�RŅ����I���rgVJ�����ܥ1F���(i	A���u�RFM�9��IH,��F4n	ܒ����H�z���>Y+p^rb�L���A�D�f%����O$0���@R�ƨ�R=H$���-�\��)J�bA�a��q��T�mh��Lɾ($����$^�[1�%Q#��� v���~|�#��Aa"4��<fhG.�|r���N�c�ҡr볬��\pI�y̕Z�5UP��\U ��)������(7ьm&��"��|1��z���u�x�P@��hi9*���~��zU�:�����拐^/2�֬�Q]z���;��ZΈ}��V�҄\{c+��	���$x	y�."����6璀�j�lt@�a�!+@Q�@rc@�7�b�^����E��`nB��wA��}Ct-C7�}�/N�ɦ�7j�_�b��FxW0�L���%�x�R;O��sB�ķ����]p fȈ�T�e��#4ʼ�ր����Z��+f#�˰t�cӚCP�p�,��{sރZ��\�C�N��C�6C!:F�yX�G�?r.߯`�X�/�~�E�YFȚ�����΅���E��5*�������yR��=�<�$F%�Ϩ�>�]"����+�c�S�H�(�P���n壃pX&���Ҵ�y���O4�l}�u��Jf�;"X"޳b	�b���[Z��UP�"<����yr!z�pX)-�u�`!
 k�"��,1�A �+Tj��^�$(=�}=Eh�*����l�� �Cn(�����e<U���pX �i�Nn�
E��6jb[E��5�5�V�M \(�j�ɂ���7��R(��,o��h�KJ���2I��,b�_HĠ�\���1.�54�3�+�R8PĖ��r�[��K"mI�q�����b��{DՎГ���rD�u�9x��ܔ3W0G������o1�u.VmA�YUC���ǃ��#��i�61��QJ ��1�{�FkoíE.prkp�BKcE��
�t�]��Pm��#�cK`�@l���sY&��;QSOé!X���ɂ�=�1"}/J�v�*)���Dp�b*�hٰT
a(Cd(,<��UQ��Eޑ؁,��E�S|p�V۪M�G ��`^fpi`R�����g[)��������a������H
�{ԏ=�	T�b��Qb"�3)�����H������!v��6	м� �3[��b����+�a���JD3A6�' �*�ٍO�CͲ��f�&�'R��,yA�����NFw(�]��¯L�`ҝ`Lެ�]`
�m1O# Ȃ*�y2�ĲK$ �y�J���%DV2M v�tn&����k.�3��a'S0Ў%J��T#.��x��H��=Q�%��*ʱؑ���x���ViW�&l=�'�~,����F~^�����5�DNH
"\YP6�y���(F2�t�S���rQd���rtG�X��U��U���L�ɳ�cb�5��vV�ğ�1�J��♛�ޘ��NakE^�WQ��4lć�vΏ���)� �s�