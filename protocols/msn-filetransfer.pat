# MSN Filetransfers - Filetransfers as used by MSN Messenger
# Pattern quality: good veryfast
# Protocol groups: proprietary document_retrieval
#
# http://www.hypothetic.org/docs/msn/client/file_transfer.php
#
# This pattern has been tested and seems to work well.  It, does,
# however, require more testing with various versions of the official
# MSN client as well as with clones such as Trillian, Miranda, Gaim,
# etc.  If you are using a MSN clone and this pattern DOES work for you,
# please, also let us know.
#
# To get or provide more information about this protocol and/or pattern:
# http://www.protocolinfo.org/wiki/MSN_Messenger
# http://lists.sourceforge.net/lists/listinfo/l7-filter-developers

# First part matches the older MSNFTP: A MSN filetransfer is a normal
# MSN connection except that the protocol is MSNFTP. Some clients
# (especially Trillian) send other protocol versions besides MSNFTP
# which should be matched by the [ -~]*.

# Second part matches newer MSNSLP: 
# http://msnpiki.msnfanatic.com/index.php/MSNC:MSNSLP

msn-filetransfer
^(ver [ -~]*msnftp\x0d\x0aver msnftp\x0d\x0ausr|method msnmsgr:)

