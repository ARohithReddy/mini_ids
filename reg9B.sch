VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(71:0)
        SIGNAL clk
        SIGNAL clr
        SIGNAL d(71:64)
        SIGNAL d(63:48)
        SIGNAL d(47:32)
        SIGNAL ce
        SIGNAL d(15:0)
        SIGNAL d(31:16)
        SIGNAL q(71:64)
        SIGNAL q(71:0)
        SIGNAL q(63:48)
        SIGNAL q(47:32)
        SIGNAL q(31:16)
        SIGNAL q(15:0)
        PORT Input d(71:0)
        PORT Input clk
        PORT Input clr
        PORT Input ce
        PORT Output q(71:0)
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1296 384 R0
        INSTANCE XLXI_2 1296 720 R0
        INSTANCE XLXI_3 1296 1040 R0
        INSTANCE XLXI_4 1296 1360 R0
        INSTANCE XLXI_5 1296 1696 R0
        BEGIN BRANCH d(71:0)
            WIRE 848 1952 912 1952
            WIRE 912 112 912 128
            WIRE 912 128 912 464
            WIRE 912 464 912 784
            WIRE 912 784 912 1104
            WIRE 912 1104 912 1440
            WIRE 912 1440 912 1952
        END BRANCH
        BEGIN BRANCH clk
            WIRE 848 2048 1216 2048
            WIRE 1216 256 1296 256
            WIRE 1216 256 1216 592
            WIRE 1216 592 1296 592
            WIRE 1216 592 1216 912
            WIRE 1216 912 1296 912
            WIRE 1216 912 1216 1232
            WIRE 1216 1232 1216 1568
            WIRE 1216 1568 1216 2048
            WIRE 1216 1568 1296 1568
            WIRE 1216 1232 1296 1232
        END BRANCH
        BEGIN BRANCH clr
            WIRE 832 2112 880 2112
            WIRE 880 2112 1264 2112
            WIRE 1264 352 1296 352
            WIRE 1264 352 1264 688
            WIRE 1264 688 1296 688
            WIRE 1264 688 1264 1008
            WIRE 1264 1008 1296 1008
            WIRE 1264 1008 1264 1328
            WIRE 1264 1328 1264 1664
            WIRE 1264 1664 1264 2112
            WIRE 1264 1664 1296 1664
            WIRE 1264 1328 1296 1328
        END BRANCH
        IOMARKER 848 1952 d(71:0) R180 28
        IOMARKER 848 2000 ce R180 28
        IOMARKER 848 2048 clk R180 28
        IOMARKER 832 2112 clr R180 28
        BUSTAP 912 128 1008 128
        BUSTAP 912 464 1008 464
        BUSTAP 912 784 1008 784
        BUSTAP 912 1104 1008 1104
        BUSTAP 912 1440 1008 1440
        BEGIN BRANCH d(71:64)
            WIRE 1008 128 1296 128
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 1008 464 1296 464
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 1008 784 1296 784
        END BRANCH
        BEGIN BRANCH ce
            WIRE 848 2000 1120 2000
            WIRE 1120 192 1296 192
            WIRE 1120 192 1120 528
            WIRE 1120 528 1296 528
            WIRE 1120 528 1120 848
            WIRE 1120 848 1120 1168
            WIRE 1120 1168 1120 1504
            WIRE 1120 1504 1120 2000
            WIRE 1120 1504 1296 1504
            WIRE 1120 1168 1296 1168
            WIRE 1120 848 1296 848
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 1008 1440 1296 1440
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 1008 1104 1296 1104
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1680 128 1792 128
            WIRE 1792 128 1904 128
        END BRANCH
        BEGIN BRANCH q(71:0)
            WIRE 2000 128 2000 464
            WIRE 2000 464 2000 784
            WIRE 2000 784 2000 1104
            WIRE 2000 1104 2000 1440
            WIRE 2000 1440 2000 1808
            WIRE 2000 1808 2112 1808
        END BRANCH
        IOMARKER 2112 1808 q(71:0) R0 28
        BUSTAP 2000 128 1904 128
        BUSTAP 2000 464 1904 464
        BEGIN BRANCH q(63:48)
            WIRE 1680 464 1872 464
            WIRE 1872 464 1904 464
        END BRANCH
        BUSTAP 2000 784 1904 784
        BUSTAP 2000 1104 1904 1104
        BUSTAP 2000 1440 1904 1440
        BEGIN BRANCH q(47:32)
            WIRE 1680 784 1904 784
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1680 1104 1904 1104
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1680 1440 1904 1440
        END BRANCH
    END SHEET
END SCHEMATIC
