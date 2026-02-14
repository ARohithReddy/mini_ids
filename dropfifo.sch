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
        SIGNAL raddr(7:0)
        SIGNAL waddr(7:0)
        SIGNAL XLXN_10(71:0)
        SIGNAL clk
        SIGNAL firstword
        SIGNAL lastword
        SIGNAL fifowrite
        SIGNAL XLXN_18(7:0)
        SIGNAL in_fifo(71:0)
        SIGNAL XLXN_21
        SIGNAL XLXN_24
        SIGNAL drop_pkt
        SIGNAL fiforead
        SIGNAL XLXN_35
        SIGNAL rst
        SIGNAL XLXN_42
        SIGNAL out_fifo(71:0)
        SIGNAL valid_data
        SIGNAL XLXN_47
        PORT Input clk
        PORT Input firstword
        PORT Input lastword
        PORT Input fifowrite
        PORT Input in_fifo(71:0)
        PORT Input drop_pkt
        PORT Input fiforead
        PORT Input rst
        PORT Output out_fifo(71:0)
        PORT Output valid_data
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2026 2 1 2 55 39
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
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
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
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
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF mema
            TIMESTAMP 2026 2 1 3 2 55
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) raddr(7:0)
            PIN B(7:0) XLXN_18(7:0)
            PIN EQ XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) waddr(7:0)
            PIN B(7:0) raddr(7:0)
            PIN EQ XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_5 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_6 fd8ce
            PIN C clk
            PIN CE XLXN_35
            PIN CLR rst
            PIN D(7:0) waddr(7:0)
            PIN Q(7:0) XLXN_18(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_8 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_9 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_24
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_11 cb8ce
            PIN C clk
            PIN CE XLXN_24
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) raddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_13 or2
            PIN I0 XLXN_2
            PIN I1 XLXN_1
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_14 and2b1
            PIN I0 XLXN_42
            PIN I1 XLXN_3
            PIN O XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_15 and3b2
            PIN I0 XLXN_5
            PIN I1 XLXN_4
            PIN I2 fiforead
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_16 cb8cle
            PIN C clk
            PIN CE XLXN_21
            PIN CLR rst
            PIN D(7:0) XLXN_18(7:0)
            PIN L XLXN_42
            PIN CEO
            PIN Q(7:0) waddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_17 vcc
            PIN P XLXN_47
        END BLOCK
        BEGIN BLOCK XLXI_18 reg9B
            PIN d(71:0) in_fifo(71:0)
            PIN clk clk
            PIN clr rst
            PIN ce XLXN_47
            PIN q(71:0) XLXN_10(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_19 mema
            PIN addra(7:0) waddr(7:0)
            PIN dina(71:0) XLXN_10(71:0)
            PIN wea XLXN_21
            PIN clka clk
            PIN addrb(7:0) raddr(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1232 2384 R0
        END INSTANCE
        INSTANCE XLXI_4 432 496 R0
        INSTANCE XLXI_5 432 848 R0
        INSTANCE XLXI_6 416 1216 R0
        INSTANCE XLXI_7 1248 592 R0
        INSTANCE XLXI_8 416 2704 R0
        INSTANCE XLXI_11 2160 1920 R0
        INSTANCE XLXI_14 1440 784 R0
        BEGIN BRANCH XLXN_1
            WIRE 816 240 832 240
            WIRE 832 240 928 240
            WIRE 928 240 928 624
            WIRE 928 624 1056 624
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 816 592 832 592
            WIRE 832 592 912 592
            WIRE 912 592 912 688
            WIRE 912 688 1056 688
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1312 656 1424 656
            WIRE 1424 656 1440 656
        END BRANCH
        BEGIN BRANCH raddr(7:0)
            WIRE 1216 1824 1232 1824
            WIRE 1216 1824 1216 1952
            WIRE 1216 1952 1216 2064
            WIRE 1216 2064 1232 2064
            WIRE 1216 1952 1776 1952
            WIRE 1776 1952 2736 1952
            WIRE 2544 1664 2736 1664
            WIRE 2736 1664 2736 1952
            WIRE 2736 1488 2736 1664
            WIRE 2736 1488 2928 1488
            BEGIN DISPLAY 1776 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH waddr(7:0)
            WIRE 320 960 416 960
            WIRE 320 960 320 1648
            WIRE 320 1648 1008 1648
            WIRE 1008 1648 1008 1920
            WIRE 1008 1920 1728 1920
            WIRE 1728 1920 2624 1920
            WIRE 1008 1632 1232 1632
            WIRE 1008 1632 1008 1648
            WIRE 2544 1120 2624 1120
            WIRE 2624 1120 2736 1120
            WIRE 2736 1120 2736 1264
            WIRE 2736 1264 2928 1264
            WIRE 2624 1120 2624 1920
            BEGIN DISPLAY 1728 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_10(71:0)
            WIRE 2672 368 2800 368
            WIRE 2800 368 2800 496
            WIRE 2800 496 2800 1296
            WIRE 2800 1296 2928 1296
        END BRANCH
        BEGIN BRANCH clk
            WIRE 336 2576 400 2576
            WIRE 400 2576 416 2576
            WIRE 400 368 400 464
            WIRE 400 464 400 720
            WIRE 400 720 400 832
            WIRE 400 832 400 1088
            WIRE 400 1088 416 1088
            WIRE 400 1088 400 2576
            WIRE 400 832 1792 832
            WIRE 1792 832 2144 832
            WIRE 2144 832 2144 1376
            WIRE 2144 1376 2160 1376
            WIRE 2144 1376 2144 1520
            WIRE 2144 1520 2144 1792
            WIRE 2144 1792 2160 1792
            WIRE 2144 1792 2144 2416
            WIRE 2144 2416 2176 2416
            WIRE 2144 1520 2912 1520
            WIRE 2912 1520 2912 1680
            WIRE 2912 1680 2928 1680
            WIRE 400 720 432 720
            WIRE 400 464 1248 464
            WIRE 400 368 432 368
            WIRE 1792 432 1792 832
            WIRE 1792 432 2288 432
            WIRE 2912 1456 2928 1456
            WIRE 2912 1456 2912 1520
        END BRANCH
        BEGIN BRANCH firstword
            WIRE 336 240 432 240
        END BRANCH
        BEGIN BRANCH lastword
            WIRE 320 592 432 592
        END BRANCH
        BEGIN BRANCH fifowrite
            WIRE 1152 336 1248 336
        END BRANCH
        BEGIN BRANCH XLXN_18(7:0)
            WIRE 800 960 1136 960
            WIRE 1136 960 1136 2256
            WIRE 1136 2256 1232 2256
            WIRE 1136 960 1648 960
            WIRE 1648 960 1648 1120
            WIRE 1648 1120 2160 1120
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 2160 368 2288 368
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 1632 336 1888 336
            WIRE 1888 336 1888 1312
            WIRE 1888 1312 1888 1552
            WIRE 1888 1552 2608 1552
            WIRE 1888 1312 2160 1312
            WIRE 2608 1328 2608 1552
            WIRE 2608 1328 2928 1328
        END BRANCH
        INSTANCE XLXI_15 1744 1856 R0
        BEGIN BRANCH XLXN_4
            WIRE 1616 1728 1744 1728
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1616 2160 1632 2160
            WIRE 1632 1792 1744 1792
            WIRE 1632 1792 1632 2160
        END BRANCH
        BEGIN INSTANCE XLXI_2 1232 1952 R0
        END INSTANCE
        BEGIN BRANCH drop_pkt
            WIRE 320 2448 416 2448
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1584 1440 1744 1440
            WIRE 1744 1440 1744 1664
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 336 1024 416 1024
            WIRE 336 1024 336 1248
            WIRE 336 1248 1760 1248
            WIRE 1696 688 1760 688
            WIRE 1760 688 1760 1248
        END BRANCH
        BEGIN BRANCH rst
            WIRE 416 1184 416 1216
            WIRE 416 1216 2080 1216
            WIRE 2080 1216 2080 1472
            WIRE 2080 1472 2080 1888
            WIRE 2080 1888 2160 1888
            WIRE 2080 1888 2080 2512
            WIRE 2080 2512 2176 2512
            WIRE 2080 1472 2160 1472
            WIRE 1952 1888 2080 1888
            WIRE 2080 496 2288 496
            WIRE 2080 496 2080 1216
        END BRANCH
        BEGIN BRANCH XLXN_42
            WIRE 800 2448 2048 2448
            WIRE 1360 720 1440 720
            WIRE 1360 720 1360 800
            WIRE 1360 800 2048 800
            WIRE 2048 800 2048 1248
            WIRE 2048 1248 2048 2448
            WIRE 2048 1248 2160 1248
        END BRANCH
        IOMARKER 320 2448 drop_pkt R180 28
        IOMARKER 1584 1440 fiforead R180 28
        IOMARKER 1152 336 fifowrite R180 28
        IOMARKER 336 240 firstword R180 28
        IOMARKER 320 592 lastword R180 28
        IOMARKER 336 2576 clk R180 28
        IOMARKER 1952 1888 rst R180 28
        IOMARKER 2160 368 in_fifo(71:0) R180 28
        BEGIN BRANCH out_fifo(71:0)
            WIRE 3216 1488 3296 1488
        END BRANCH
        BEGIN BRANCH valid_data
            WIRE 2560 2288 2592 2288
        END BRANCH
        IOMARKER 3296 1488 out_fifo(71:0) R0 28
        IOMARKER 2592 2288 valid_data R0 28
        INSTANCE XLXI_17 2112 592 R0
        BEGIN BRANCH XLXN_47
            WIRE 2176 592 2176 608
            WIRE 2176 608 2256 608
            WIRE 2256 560 2288 560
            WIRE 2256 560 2256 608
        END BRANCH
        INSTANCE XLXI_16 2160 1504 R0
        INSTANCE XLXI_9 2176 2544 R0
        BEGIN BRANCH XLXN_24
            WIRE 2000 1728 2016 1728
            WIRE 2016 1728 2160 1728
            WIRE 2016 1728 2016 2288
            WIRE 2016 2288 2176 2288
        END BRANCH
        INSTANCE XLXI_13 1056 752 R0
        BEGIN INSTANCE XLXI_18 2288 592 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_19 2928 1216 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
