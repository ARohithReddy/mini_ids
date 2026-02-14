VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL A(7)
        SIGNAL B(7)
        SIGNAL A(6)
        SIGNAL B(6)
        SIGNAL A(5)
        SIGNAL B(5)
        SIGNAL A(4)
        SIGNAL B(4)
        SIGNAL A(3)
        SIGNAL B(3)
        SIGNAL A(2)
        SIGNAL B(2)
        SIGNAL A(1)
        SIGNAL B(1)
        SIGNAL A(0)
        SIGNAL B(0)
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL EQ
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Output EQ
        BEGIN BLOCKDEF xnor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
            CIRCLE N 212 -104 228 -88 
            LINE N 228 -96 256 -96 
            LINE N 60 -28 60 -28 
        END BLOCKDEF
        BEGIN BLOCKDEF and4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xnor2
            PIN I0 B(7)
            PIN I1 A(7)
            PIN O XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_2 xnor2
            PIN I0 B(6)
            PIN I1 A(6)
            PIN O XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_3 xnor2
            PIN I0 B(5)
            PIN I1 A(5)
            PIN O XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_4 xnor2
            PIN I0 B(4)
            PIN I1 A(4)
            PIN O XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_5 xnor2
            PIN I0 B(3)
            PIN I1 A(3)
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_6 xnor2
            PIN I0 B(2)
            PIN I1 A(2)
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_7 xnor2
            PIN I0 B(1)
            PIN I1 A(1)
            PIN O XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_8 xnor2
            PIN I0 B(0)
            PIN I1 A(0)
            PIN O XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_9 and4
            PIN I0 XLXN_22
            PIN I1 XLXN_21
            PIN I2 XLXN_20
            PIN I3 XLXN_19
            PIN O XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_10 and4
            PIN I0 XLXN_26
            PIN I1 XLXN_25
            PIN I2 XLXN_24
            PIN I3 XLXN_23
            PIN O XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_11 and2
            PIN I0 XLXN_27
            PIN I1 XLXN_28
            PIN O EQ
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1024 480 R0
        INSTANCE XLXI_2 1008 640 R0
        INSTANCE XLXI_3 1008 800 R0
        INSTANCE XLXI_4 1008 944 R0
        INSTANCE XLXI_5 1008 1088 R0
        INSTANCE XLXI_6 1008 1232 R0
        INSTANCE XLXI_7 1008 1392 R0
        INSTANCE XLXI_8 1008 1536 R0
        BEGIN BRANCH A(7:0)
            WIRE 544 1536 736 1536
            WIRE 736 352 736 512
            WIRE 736 512 736 672
            WIRE 736 672 736 816
            WIRE 736 816 736 960
            WIRE 736 960 736 1104
            WIRE 736 1104 736 1264
            WIRE 736 1264 736 1408
            WIRE 736 1408 736 1536
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 544 1616 720 1616
            WIRE 720 1616 800 1616
            WIRE 800 416 800 576
            WIRE 800 576 800 736
            WIRE 800 736 800 784
            WIRE 800 784 800 880
            WIRE 800 880 800 1024
            WIRE 800 1024 800 1168
            WIRE 800 1168 800 1328
            WIRE 800 1328 800 1472
            WIRE 800 1472 800 1616
        END BRANCH
        IOMARKER 544 1536 A(7:0) R180 28
        IOMARKER 544 1616 B(7:0) R180 28
        BUSTAP 736 352 832 352
        BUSTAP 736 512 832 512
        BUSTAP 800 416 896 416
        BUSTAP 800 576 896 576
        BUSTAP 800 736 896 736
        BUSTAP 800 880 896 880
        BUSTAP 800 1024 896 1024
        BUSTAP 800 1168 896 1168
        BUSTAP 800 1328 896 1328
        BUSTAP 800 1472 896 1472
        BUSTAP 736 1408 832 1408
        BUSTAP 736 1264 832 1264
        BUSTAP 736 1104 832 1104
        BUSTAP 736 960 832 960
        BUSTAP 736 816 832 816
        BUSTAP 736 672 832 672
        BEGIN BRANCH A(7)
            WIRE 832 352 912 352
            WIRE 912 352 1024 352
            BEGIN DISPLAY 912 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 896 416 944 416
            WIRE 944 416 1024 416
            BEGIN DISPLAY 944 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 832 512 912 512
            WIRE 912 512 1008 512
            BEGIN DISPLAY 912 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 896 576 944 576
            WIRE 944 576 1008 576
            BEGIN DISPLAY 944 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 832 672 928 672
            WIRE 928 672 1008 672
            BEGIN DISPLAY 928 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 896 736 928 736
            WIRE 928 736 1008 736
            BEGIN DISPLAY 928 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 832 816 912 816
            WIRE 912 816 1008 816
            BEGIN DISPLAY 912 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 896 880 944 880
            WIRE 944 880 1008 880
            BEGIN DISPLAY 944 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 832 960 912 960
            WIRE 912 960 1008 960
            BEGIN DISPLAY 912 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 896 1024 944 1024
            WIRE 944 1024 1008 1024
            BEGIN DISPLAY 944 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 832 1104 912 1104
            WIRE 912 1104 1008 1104
            BEGIN DISPLAY 912 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 896 1168 928 1168
            WIRE 928 1168 1008 1168
            BEGIN DISPLAY 928 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 832 1264 912 1264
            WIRE 912 1264 1008 1264
            BEGIN DISPLAY 912 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 896 1328 944 1328
            WIRE 944 1328 1008 1328
            BEGIN DISPLAY 944 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 832 1408 928 1408
            WIRE 928 1408 1008 1408
            BEGIN DISPLAY 928 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 896 1472 944 1472
            WIRE 944 1472 1008 1472
            BEGIN DISPLAY 944 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_10 1520 1376 R0
        BEGIN BRANCH XLXN_19
            WIRE 1280 384 1520 384
            WIRE 1520 384 1520 528
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 1264 848 1520 848
            WIRE 1520 720 1520 848
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1264 992 1520 992
            WIRE 1520 992 1520 1120
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 1264 1136 1392 1136
            WIRE 1392 1136 1392 1184
            WIRE 1392 1184 1520 1184
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1264 1296 1392 1296
            WIRE 1392 1248 1392 1296
            WIRE 1392 1248 1520 1248
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 1264 1440 1520 1440
            WIRE 1520 1312 1520 1440
        END BRANCH
        INSTANCE XLXI_9 1520 784 R0
        BEGIN BRANCH XLXN_20
            WIRE 1264 544 1280 544
            WIRE 1280 544 1280 592
            WIRE 1280 592 1520 592
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 1264 704 1280 704
            WIRE 1280 656 1520 656
            WIRE 1280 656 1280 704
        END BRANCH
        INSTANCE XLXI_11 1968 1008 R0
        BEGIN BRANCH XLXN_28
            WIRE 1776 624 1792 624
            WIRE 1792 624 1792 880
            WIRE 1792 880 1968 880
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1776 1216 1792 1216
            WIRE 1792 944 1968 944
            WIRE 1792 944 1792 1216
        END BRANCH
        BEGIN BRANCH EQ
            WIRE 2224 912 2384 912
        END BRANCH
        IOMARKER 2384 912 EQ R0 28
    END SHEET
END SCHEMATIC
