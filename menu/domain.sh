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
BZh91AY&SY�*�0 __�P}���>�߮?���PD@  P-U��!֍H�=5<���� 4 �� ���4�ڦ�=@mh�b     H�4���S���<��C!���C��C&�dhi��ddhd&�� ɑ�a�Ѥ�=?S��=M�G�S� �����=q^-���BZ~sD���s��<V��|�q�|��7r��;���h԰��VDc38H����F.���RE�c38ݨS�q�������A��1g,�Jǁ	���AQ\O
��aH�,�Dy;�樓�^��!{N�+A���3���)���pVP2��ӡ+�RlgT?p-�THF�V=	��ۨ��Nţ��VT���j��!a��z��s�B�%ޒ�]xRZ�s!�d�B%m&5��0ٻ�$B��1�`1-�W�%%%(�2���(�u#u��д�ٌn�����{>�V��Ef�>�&Б��Lm�Q�0�u���S�}���:>}���IM�JZ��W����m�)@L�<��L�i�8�ʺ�%4��]���k�������K3�3i�6"UH@���ε��m���a���\|�A��MD���k��Ԏ4R-~��D�l
�'丰,�L���3�b$�;�-�0��f�U�!{��^M�������Ų�j��D�9��n@k�8�A�8G���E�.��s��������{���(!��8���$�w�P~ge�@B���^�Y`��>W��q�@�V*�A]��Xw��*�x� D���	�S>�숺2G��Uu���Wm������L�#���F�I1<]�0�6\zwTx�I�y:�8�� ��h��[T�Nlv�T�o-$���H5�F%��]������4�K2�*Uj�B��8C�JHL,Љ�!r���k�딶ט`�!�qI;�P����$@�)����(AC1kh�6���8'i�2�C2k>��&��;B��_�9��f{�dr�ѱ�K���N��k6%�2IH (X(cU�d���4��g	���wK)�A$�81<Ω�1ɰ��Rɦ
�]�9�4��nqY	�Vr5鶱�|��JA��e/-K��۾� �J��)��6�ʀ��)��y��ʇ��#'��Px�(*�#��		���U`�<���UV��&/���)�AW��