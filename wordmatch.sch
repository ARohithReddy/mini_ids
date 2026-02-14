VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL match
        SIGNAL wildcard(6:0)
        SIGNAL datacomp(55:0)
        SIGNAL datain(111:0)
        SIGNAL datain(55:0)
        SIGNAL datain(63:8)
        SIGNAL datain(79:24)
        SIGNAL datain(87:32)
        SIGNAL datain(103:48)
        SIGNAL datain(111:56)
        SIGNAL datain(71:16)
        SIGNAL datain(95:40)
        PORT Output match
        PORT Input wildcard(6:0)
        PORT Input datacomp(55:0)
        PORT Input datain(111:0)
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2026 2 1 2 56 1
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(111:56)
            PIN a(55:0) datacomp(55:0)
            PIN match XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(103:48)
            PIN a(55:0) datacomp(55:0)
            PIN match XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(95:40)
            PIN a(55:0) datacomp(55:0)
            PIN match XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(87:32)
            PIN a(55:0) datacomp(55:0)
            PIN match XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(79:24)
            PIN a(55:0) datacomp(55:0)
            PIN match XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(55:0)
            PIN a(55:0) datacomp(55:0)
            PIN match XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_9 or8
            PIN I0 XLXN_8
            PIN I1 XLXN_7
            PIN I2 XLXN_6
            PIN I3 XLXN_5
            PIN I4 XLXN_4
            PIN I5 XLXN_3
            PIN I6 XLXN_2
            PIN I7 XLXN_1
            PIN O match
        END BLOCK
        BEGIN BLOCK XLXI_10 comparator
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(71:16)
            PIN a(55:0) datacomp(55:0)
            PIN match XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_11 comparator
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(63:8)
            PIN a(55:0) datacomp(55:0)
            PIN match XLXN_7
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1392 480 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1392 752 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1392 1024 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1392 1312 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1392 1584 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1392 2400 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1776 320 2288 320
            WIRE 2288 320 2288 1072
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1776 592 2032 592
            WIRE 2032 592 2032 1136
            WIRE 2032 1136 2288 1136
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1776 864 2016 864
            WIRE 2016 864 2016 1200
            WIRE 2016 1200 2288 1200
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1776 1984 2048 1984
            WIRE 2048 1456 2048 1984
            WIRE 2048 1456 2288 1456
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1776 2240 2288 2240
            WIRE 2288 1520 2288 2240
        END BRANCH
        BEGIN BRANCH match
            WIRE 2544 1296 2560 1296
            WIRE 2560 1296 2688 1296
        END BRANCH
        BEGIN BRANCH wildcard(6:0)
            WIRE 752 2352 1072 2352
            WIRE 1072 320 1392 320
            WIRE 1072 320 1072 592
            WIRE 1072 592 1072 864
            WIRE 1072 864 1072 1152
            WIRE 1072 1152 1072 1424
            WIRE 1072 1424 1072 1696
            WIRE 1072 1696 1392 1696
            WIRE 1072 1696 1072 1984
            WIRE 1072 1984 1072 2240
            WIRE 1072 2240 1392 2240
            WIRE 1072 2240 1072 2352
            WIRE 1072 1984 1392 1984
            WIRE 1072 1424 1392 1424
            WIRE 1072 1152 1392 1152
            WIRE 1072 864 1392 864
            WIRE 1072 592 1392 592
        END BRANCH
        BEGIN BRANCH datacomp(55:0)
            WIRE 752 2416 1296 2416
            WIRE 1296 448 1392 448
            WIRE 1296 448 1296 720
            WIRE 1296 720 1296 992
            WIRE 1296 992 1296 1280
            WIRE 1296 1280 1296 1552
            WIRE 1296 1552 1392 1552
            WIRE 1296 1552 1296 1824
            WIRE 1296 1824 1296 2112
            WIRE 1296 2112 1296 2368
            WIRE 1296 2368 1392 2368
            WIRE 1296 2368 1296 2416
            WIRE 1296 2112 1392 2112
            WIRE 1296 1824 1392 1824
            WIRE 1296 1280 1392 1280
            WIRE 1296 992 1392 992
            WIRE 1296 720 1392 720
        END BRANCH
        BEGIN INSTANCE XLXI_10 1392 1856 R0
        END INSTANCE
        BEGIN BRANCH datain(111:0)
            WIRE 768 2304 880 2304
            WIRE 880 384 880 656
            WIRE 880 656 880 928
            WIRE 880 928 880 1216
            WIRE 880 1216 880 1488
            WIRE 880 1488 880 1760
            WIRE 880 1760 880 2048
            WIRE 880 2048 880 2304
        END BRANCH
        IOMARKER 768 2304 datain(111:0) R180 28
        BUSTAP 880 384 976 384
        BUSTAP 880 656 976 656
        BUSTAP 880 1216 976 1216
        BUSTAP 880 1488 976 1488
        BUSTAP 880 2048 976 2048
        BUSTAP 880 2304 976 2304
        BEGIN BRANCH datain(55:0)
            WIRE 976 2304 1392 2304
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 976 2048 1392 2048
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 976 1488 1392 1488
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 976 1216 1392 1216
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 976 656 1392 656
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 976 384 1392 384
        END BRANCH
        BUSTAP 880 928 976 928
        BUSTAP 880 1760 976 1760
        BEGIN BRANCH datain(71:16)
            WIRE 976 1760 1392 1760
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 976 928 1392 928
        END BRANCH
        BEGIN INSTANCE XLXI_11 1392 2144 R0
        END INSTANCE
        IOMARKER 752 2352 wildcard(6:0) R180 28
        IOMARKER 752 2416 datacomp(55:0) R180 28
        BEGIN BRANCH XLXN_6
            WIRE 1776 1696 2032 1696
            WIRE 2032 1392 2032 1696
            WIRE 2032 1392 2288 1392
        END BRANCH
        INSTANCE XLXI_9 2288 1584 R0
        BEGIN BRANCH XLXN_4
            WIRE 1776 1152 1792 1152
            WIRE 1792 1152 1792 1264
            WIRE 1792 1264 2288 1264
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1776 1424 1792 1424
            WIRE 1792 1328 2288 1328
            WIRE 1792 1328 1792 1424
        END BRANCH
        IOMARKER 2688 1296 match R0 28
    END SHEET
END SCHEMATIC
