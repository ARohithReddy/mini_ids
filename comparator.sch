VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL amask(6:0)
        SIGNAL b(55:0)
        SIGNAL a(55:0)
        SIGNAL a(55:48)
        SIGNAL b(55:48)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL a(23:16)
        SIGNAL a(15:8)
        SIGNAL b(23:16)
        SIGNAL b(15:8)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL amask(6)
        SIGNAL amask(5)
        SIGNAL amask(4)
        SIGNAL amask(3)
        SIGNAL amask(2)
        SIGNAL amask(1)
        SIGNAL amask(0)
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL XLXN_47
        SIGNAL XLXN_48
        SIGNAL XLXN_49
        SIGNAL XLXN_50
        SIGNAL match
        PORT Input amask(6:0)
        PORT Input b(55:0)
        PORT Input a(55:0)
        PORT Output match
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2026 2 1 2 55 39
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_5 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_6 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_10 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_8
            PIN O XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_11 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_7
            PIN O XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_12 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_6
            PIN O XLXN_46
        END BLOCK
        BEGIN BLOCK XLXI_13 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_5
            PIN O XLXN_47
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_4
            PIN O XLXN_48
        END BLOCK
        BEGIN BLOCK XLXI_15 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_3
            PIN O XLXN_49
        END BLOCK
        BEGIN BLOCK XLXI_19 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_2
            PIN O XLXN_50
        END BLOCK
        BEGIN BLOCK XLXI_20 and7
            PIN I0 XLXN_50
            PIN I1 XLXN_49
            PIN I2 XLXN_48
            PIN I3 XLXN_47
            PIN I4 XLXN_46
            PIN I5 XLXN_45
            PIN I6 XLXN_44
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1216 576 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1216 944 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1216 1312 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1216 1664 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1216 2016 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1216 2368 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1216 2720 R0
        END INSTANCE
        INSTANCE XLXI_10 1792 480 R0
        INSTANCE XLXI_11 1792 848 R0
        INSTANCE XLXI_12 1792 1216 R0
        INSTANCE XLXI_13 1792 1568 R0
        INSTANCE XLXI_14 1792 1920 R0
        INSTANCE XLXI_15 1792 2272 R0
        INSTANCE XLXI_19 1792 2624 R0
        BEGIN BRANCH XLXN_2
            WIRE 1600 2496 1792 2496
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1600 2144 1792 2144
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1600 1792 1792 1792
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1600 1440 1792 1440
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1600 1088 1792 1088
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1600 720 1792 720
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1600 352 1792 352
        END BRANCH
        BEGIN BRANCH amask(6:0)
            WIRE 1008 2672 1632 2672
            WIRE 1632 416 1632 784
            WIRE 1632 784 1632 1152
            WIRE 1632 1152 1632 1504
            WIRE 1632 1504 1632 1856
            WIRE 1632 1856 1632 2208
            WIRE 1632 2208 1632 2560
            WIRE 1632 2560 1632 2672
        END BRANCH
        IOMARKER 1008 2672 amask(6:0) R180 28
        BEGIN BRANCH b(55:0)
            WIRE 624 2496 976 2496
            WIRE 976 2496 976 2592
            WIRE 976 448 976 816
            WIRE 976 816 976 1184
            WIRE 976 1184 976 1536
            WIRE 976 1536 976 1888
            WIRE 976 1888 976 2240
            WIRE 976 2240 976 2400
            WIRE 976 2400 976 2496
        END BRANCH
        BUSTAP 880 256 976 256
        BUSTAP 976 448 1072 448
        BUSTAP 976 816 1072 816
        BUSTAP 976 1184 1072 1184
        BUSTAP 976 1536 1072 1536
        BUSTAP 976 1888 1072 1888
        BUSTAP 976 2240 1072 2240
        BUSTAP 976 2592 1072 2592
        BEGIN BRANCH a(55:0)
            WIRE 624 2400 784 2400
            WIRE 784 256 832 256
            WIRE 832 256 880 256
            WIRE 784 256 784 624
            WIRE 784 624 784 992
            WIRE 784 992 784 1344
            WIRE 784 1344 784 1696
            WIRE 784 1696 784 1712
            WIRE 784 1712 784 2048
            WIRE 784 2048 784 2400
        END BRANCH
        IOMARKER 624 2400 a(55:0) R180 28
        IOMARKER 624 2496 b(55:0) R180 28
        BUSTAP 784 2400 880 2400
        BUSTAP 784 2048 880 2048
        BUSTAP 784 1696 880 1696
        BUSTAP 784 1344 880 1344
        BUSTAP 784 992 880 992
        BUSTAP 784 624 880 624
        BEGIN BRANCH a(55:48)
            WIRE 976 256 1216 256
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 1072 448 1216 448
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 880 624 1216 624
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 1072 816 1216 816
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 880 992 1216 992
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 1072 1184 1216 1184
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 880 1344 1216 1344
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 1072 1536 1216 1536
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 880 1696 1216 1696
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 880 2048 1216 2048
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1072 1888 1216 1888
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1072 2240 1216 2240
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 880 2400 944 2400
            WIRE 944 2400 944 2464
            WIRE 944 2464 1040 2464
            WIRE 1040 2400 1040 2464
            WIRE 1040 2400 1216 2400
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1072 2592 1216 2592
        END BRANCH
        BUSTAP 1632 2560 1728 2560
        BUSTAP 1632 2208 1728 2208
        BUSTAP 1632 1856 1728 1856
        BUSTAP 1632 1504 1728 1504
        BUSTAP 1632 1152 1728 1152
        BUSTAP 1632 416 1728 416
        BUSTAP 1632 784 1728 784
        BEGIN BRANCH amask(6)
            WIRE 1728 416 1792 416
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 1728 784 1792 784
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 1728 1152 1792 1152
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 1728 1504 1792 1504
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 1728 1856 1792 1856
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 1728 2208 1792 2208
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 1728 2560 1792 2560
        END BRANCH
        INSTANCE XLXI_20 2576 1728 R0
        BEGIN BRANCH XLXN_44
            WIRE 2048 384 2576 384
            WIRE 2576 384 2576 1280
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 2048 752 2304 752
            WIRE 2304 752 2304 1344
            WIRE 2304 1344 2576 1344
        END BRANCH
        BEGIN BRANCH XLXN_46
            WIRE 2048 1120 2288 1120
            WIRE 2288 1120 2288 1408
            WIRE 2288 1408 2576 1408
        END BRANCH
        BEGIN BRANCH XLXN_47
            WIRE 2048 1472 2576 1472
        END BRANCH
        BEGIN BRANCH XLXN_48
            WIRE 2048 1824 2304 1824
            WIRE 2304 1536 2304 1824
            WIRE 2304 1536 2576 1536
        END BRANCH
        BEGIN BRANCH XLXN_49
            WIRE 2048 2176 2320 2176
            WIRE 2320 1600 2320 2176
            WIRE 2320 1600 2576 1600
        END BRANCH
        BEGIN BRANCH XLXN_50
            WIRE 2048 2528 2576 2528
            WIRE 2576 1664 2576 2528
        END BRANCH
        BEGIN BRANCH match
            WIRE 2832 1472 2976 1472
        END BRANCH
        IOMARKER 2976 1472 match R0 28
    END SHEET
END SCHEMATIC
