VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL XLXN_3(111:0)
        SIGNAL XLXN_4
        SIGNAL XLXN_6
        SIGNAL match
        SIGNAL match_en
        SIGNAL mrst
        SIGNAL hwregA(63:0)
        SIGNAL hwregA(62:56)
        SIGNAL hwregA(55:0)
        SIGNAL pipe0(71:0)
        SIGNAL pipe1(71:0)
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL XLXN_24
        SIGNAL ce
        PORT Input clk
        PORT Output match
        PORT Input match_en
        PORT Input mrst
        PORT Input hwregA(63:0)
        PORT Input pipe1(71:0)
        PORT Input ce
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2026 2 1 2 55 17
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2026 2 1 2 58 43
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 2 1 2 56 30
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_4
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_6 fdce
            PIN C clk
            PIN CE XLXN_6
            PIN CLR XLXN_24
            PIN D XLXN_6
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_7 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_8 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_3(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 wordmatch
            PIN wildcard(6:0) hwregA(62:56)
            PIN datacomp(55:0) hwregA(55:0)
            PIN datain(111:0) XLXN_3(111:0)
            PIN match XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_10 reg9B
            PIN d(71:0) pipe1(71:0)
            PIN clk clk
            PIN clr XLXN_24
            PIN ce ce
            PIN q(71:0) pipe0(71:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_5 1984 1216 R0
        INSTANCE XLXI_6 2432 1344 R0
        INSTANCE XLXI_7 1952 1728 R0
        BEGIN BRANCH clk
            WIRE 400 752 592 752
            WIRE 592 752 592 1600
            WIRE 592 1600 1344 1600
            WIRE 1344 1600 1952 1600
            WIRE 592 752 656 752
            WIRE 656 752 672 752
            WIRE 1344 1216 2432 1216
            WIRE 1344 1216 1344 1600
        END BRANCH
        BEGIN BRANCH XLXN_3(111:0)
            WIRE 1056 1216 1248 1216
            WIRE 1248 1152 1248 1216
            WIRE 1248 1152 1440 1152
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1824 1024 1984 1024
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 2240 1088 2320 1088
            WIRE 2320 1088 2432 1088
            WIRE 2320 1088 2320 1152
            WIRE 2320 1152 2432 1152
        END BRANCH
        BEGIN BRANCH match
            WIRE 1904 1152 1984 1152
            WIRE 1904 1152 1904 1392
            WIRE 1904 1392 2880 1392
            WIRE 2816 1088 2880 1088
            WIRE 2880 1088 2976 1088
            WIRE 2880 1088 2880 1392
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1744 1328 1888 1328
            WIRE 1888 1088 1888 1328
            WIRE 1888 1088 1984 1088
        END BRANCH
        BEGIN BRANCH mrst
            WIRE 1744 1472 1952 1472
        END BRANCH
        IOMARKER 2976 1088 match R0 28
        BEGIN BRANCH hwregA(63:0)
            WIRE 1184 960 1280 960
            WIRE 1280 960 1280 1024
            WIRE 1280 1024 1280 1088
        END BRANCH
        IOMARKER 1184 960 hwregA(63:0) R180 28
        BUSTAP 1280 1024 1376 1024
        BUSTAP 1280 1088 1376 1088
        BEGIN BRANCH hwregA(62:56)
            WIRE 1376 1024 1392 1024
            WIRE 1392 1024 1440 1024
            BEGIN DISPLAY 1392 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 1376 1088 1392 1088
            WIRE 1392 1088 1440 1088
            BEGIN DISPLAY 1392 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1744 1328 match_en R180 28
        IOMARKER 1744 1472 mrst R180 28
        BEGIN INSTANCE XLXI_8 672 1312 R0
        END INSTANCE
        BEGIN BRANCH pipe0(71:0)
            WIRE 544 928 544 1088
            WIRE 544 1088 544 1216
            WIRE 544 928 1152 928
            WIRE 1040 688 1152 688
            WIRE 1152 688 1152 816
            WIRE 1152 816 1152 928
        END BRANCH
        BEGIN BRANCH pipe1(71:0)
            WIRE 400 688 480 688
            WIRE 480 688 480 1280
            WIRE 480 688 656 688
            WIRE 656 688 672 688
        END BRANCH
        IOMARKER 400 688 pipe1(71:0) R180 28
        BUSTAP 480 1280 576 1280
        BUSTAP 544 1216 640 1216
        BEGIN BRANCH pipe0(47:0)
            WIRE 640 1216 656 1216
            WIRE 656 1216 672 1216
            BEGIN DISPLAY 656 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 576 1280 608 1280
            WIRE 608 1280 672 1280
            BEGIN DISPLAY 608 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 416 816 416 1728
            WIRE 416 1728 2432 1728
            WIRE 416 816 656 816
            WIRE 656 816 672 816
            WIRE 2336 1472 2432 1472
            WIRE 2432 1472 2432 1728
            WIRE 2432 1312 2432 1472
        END BRANCH
        BEGIN BRANCH ce
            WIRE 384 880 656 880
            WIRE 656 880 672 880
        END BRANCH
        IOMARKER 400 752 clk R180 28
        IOMARKER 384 880 ce R180 28
        BEGIN INSTANCE XLXI_9 1440 1184 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_10 656 912 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
