<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="4" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="1" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="1" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="1" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="1" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="1" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="4" fill="1" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="0" fill="1" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="0" fill="1" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Dialight - 598-8710-307F">
<description>Upverter Parts Library

Created by Upverter.com</description>
<packages>
<package name="DIALIGHT_598-8710-307F_0">
<description>Micro LED</description>
<wire x1="-0.8" y1="-0.8" x2="-0.8" y2="0.8" width="0.15" layer="51"/>
<wire x1="-0.8" y1="0.8" x2="0.8" y2="0.8" width="0.15" layer="51"/>
<wire x1="0.8" y1="0.8" x2="0.8" y2="-0.8" width="0.15" layer="51"/>
<wire x1="0.8" y1="-0.8" x2="-0.8" y2="-0.8" width="0.15" layer="51"/>
<wire x1="-1.1" y1="-0.95" x2="-1.1" y2="0.95" width="0.1" layer="39"/>
<wire x1="-1.1" y1="0.95" x2="1.1" y2="0.95" width="0.1" layer="39"/>
<wire x1="1.1" y1="0.95" x2="1.1" y2="-0.95" width="0.1" layer="39"/>
<wire x1="1.1" y1="-0.95" x2="-1.1" y2="-0.95" width="0.1" layer="39"/>
<wire x1="-0.8" y1="1.225" x2="0.8" y2="1.225" width="0.15" layer="21"/>
<wire x1="-0.8" y1="-1.225" x2="0.8" y2="-1.225" width="0.15" layer="21"/>
<text x="1.35" y="-0.125" size="1" layer="25">&gt;NAME</text>
<circle x="-1.6" y="0.475" radius="0.25" width="0" layer="21"/>
<smd name="1" x="-0.7" y="0.5" dx="0.6" dy="0.7" layer="1"/>
<smd name="2" x="0.7" y="0.5" dx="0.6" dy="0.7" layer="1"/>
<smd name="3" x="-0.7" y="-0.5" dx="0.6" dy="0.7" layer="1"/>
<smd name="4" x="0.7" y="-0.5" dx="0.6" dy="0.7" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="DIALIGHT_598-8710-307F_0_0">
<description>Micro LED</description>
<wire x1="0" y1="-20.32" x2="2.54" y2="-20.32" width="0.508" layer="94"/>
<wire x1="2.54" y1="-20.32" x2="2.54" y2="-10.16" width="0.508" layer="94"/>
<wire x1="2.54" y1="-10.16" x2="5.08" y2="-10.16" width="0.508" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="5.08" y2="-7.62" width="0.508" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="10.16" y2="-10.16" width="0.508" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="5.08" y2="-12.7" width="0.508" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="5.08" y2="-10.16" width="0.508" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="-12.7" width="0.508" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="12.7" y2="-10.16" width="0.508" layer="94"/>
<wire x1="5.08" y1="-17.78" x2="5.08" y2="-22.86" width="0.508" layer="94"/>
<wire x1="5.08" y1="-22.86" x2="10.16" y2="-20.32" width="0.508" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="5.08" y2="-17.78" width="0.508" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="10.16" y2="-22.86" width="0.508" layer="94"/>
<wire x1="5.08" y1="-27.94" x2="5.08" y2="-33.02" width="0.508" layer="94"/>
<wire x1="5.08" y1="-33.02" x2="10.16" y2="-30.48" width="0.508" layer="94"/>
<wire x1="10.16" y1="-30.48" x2="5.08" y2="-27.94" width="0.508" layer="94"/>
<wire x1="10.16" y1="-27.94" x2="10.16" y2="-33.02" width="0.508" layer="94"/>
<wire x1="10.16" y1="-30.48" x2="12.7" y2="-30.48" width="0.508" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="12.7" y2="-20.32" width="0.508" layer="94"/>
<wire x1="2.54" y1="-20.32" x2="2.54" y2="-30.48" width="0.508" layer="94"/>
<wire x1="2.54" y1="-30.48" x2="5.08" y2="-30.48" width="0.508" layer="94"/>
<wire x1="2.54" y1="-20.32" x2="5.08" y2="-20.32" width="0.508" layer="94"/>
<wire x1="0" y1="-35.56" x2="0" y2="-5.08" width="0.508" layer="94"/>
<wire x1="0" y1="-5.08" x2="12.7" y2="-5.08" width="0.508" layer="94"/>
<wire x1="12.7" y1="-5.08" x2="12.7" y2="-35.56" width="0.508" layer="94"/>
<wire x1="12.7" y1="-35.56" x2="0" y2="-35.56" width="0.508" layer="94"/>
<wire x1="12.7" y1="-20.32" x2="12.7" y2="-20.32" width="0.15" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="12.7" y2="-10.16" width="0.15" layer="94"/>
<wire x1="12.7" y1="-30.48" x2="12.7" y2="-30.48" width="0.15" layer="94"/>
<wire x1="0" y1="-20.32" x2="0" y2="-20.32" width="0.15" layer="94"/>
<text x="0" y="-2.54" size="2.54" layer="95" align="top-left">&gt;NAME</text>
<text x="0" y="-37.846" size="2.54" layer="95" align="top-left">598-8710-307F</text>
<pin name="GREEN_CATHODE" x="17.78" y="-20.32" visible="pad" length="middle" rot="R180"/>
<pin name="RED_CATHODE" x="17.78" y="-10.16" visible="pad" length="middle" rot="R180"/>
<pin name="BLUE_CATHODE" x="17.78" y="-30.48" visible="pad" length="middle" rot="R180"/>
<pin name="COMMON_ANODE" x="-5.08" y="-20.32" visible="pad" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DIALIGHT_598-8710-307F" prefix="D">
<description>Micro LED</description>
<gates>
<gate name="G$0" symbol="DIALIGHT_598-8710-307F_0_0" x="0" y="0"/>
</gates>
<devices>
<device name="DIALIGHT_598-8710-307F_0_0" package="DIALIGHT_598-8710-307F_0">
<connects>
<connect gate="G$0" pin="BLUE_CATHODE" pad="3"/>
<connect gate="G$0" pin="COMMON_ANODE" pad="4"/>
<connect gate="G$0" pin="GREEN_CATHODE" pad="1"/>
<connect gate="G$0" pin="RED_CATHODE" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="CENTROID_NOT_SPECIFIED" value="No"/>
<attribute name="DATASHEET" value="https://media.digikey.com/pdf/Data%20Sheets/Dialight%20PDFs/598_Series_0606_Pkg.pdf"/>
<attribute name="DIGIKEY_DESCRIPTION" value="DIODE LED RGB CLEAR 0606 SMD"/>
<attribute name="DIGIKEY_PART_NUMBER" value="350-2096-1-ND"/>
<attribute name="LEAD_FREE" value="yes"/>
<attribute name="MF" value="Dialight"/>
<attribute name="MOUSER_PART_NUMBER" value="645-598-8710-307F"/>
<attribute name="MPN" value="598-8710-307F"/>
<attribute name="PACKAGE" value="LED_SMD"/>
<attribute name="PREFIX" value="D"/>
<attribute name="ROHS" value="yes"/>
<attribute name="TEMPERATURE_RANGE_HIGH" value="+100°C"/>
<attribute name="TEMPERATURE_RANGE_LOW" value="-40°C"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="D1" library="Dialight - 598-8710-307F" deviceset="DIALIGHT_598-8710-307F" device="DIALIGHT_598-8710-307F_0_0"/>
<part name="D2" library="Dialight - 598-8710-307F" deviceset="DIALIGHT_598-8710-307F" device="DIALIGHT_598-8710-307F_0_0"/>
<part name="D3" library="Dialight - 598-8710-307F" deviceset="DIALIGHT_598-8710-307F" device="DIALIGHT_598-8710-307F_0_0"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="530.86" y="-149.86" size="1.778" layer="91">MOSFTES</text>
<text x="543.56" y="-149.86" size="1.778" layer="91">MOSFTES</text>
<text x="556.26" y="-149.86" size="1.778" layer="91">MOSFTES</text>
<text x="571.5" y="-149.86" size="1.778" layer="91">MOSFTES</text>
<text x="584.2" y="-149.86" size="1.778" layer="91">MOSFTES</text>
<text x="596.9" y="-149.86" size="1.778" layer="91">MOSFTES</text>
<text x="614.68" y="-149.86" size="1.778" layer="91">MOSFTES</text>
<text x="627.38" y="-149.86" size="1.778" layer="91">MOSFTES</text>
<text x="640.08" y="-149.86" size="1.778" layer="91">MOSFTES</text>
</plain>
<instances>
<instance part="D1" gate="G$0" x="566.42" y="-129.54" smashed="yes" rot="R270">
<attribute name="NAME" x="563.88" y="-129.54" size="2.54" layer="95" rot="R270" align="top-left"/>
</instance>
<instance part="D2" gate="G$0" x="609.6" y="-129.54" smashed="yes" rot="R270">
<attribute name="NAME" x="607.06" y="-129.54" size="2.54" layer="95" rot="R270" align="top-left"/>
</instance>
<instance part="D3" gate="G$0" x="652.78" y="-129.54" smashed="yes" rot="R270">
<attribute name="NAME" x="650.24" y="-129.54" size="2.54" layer="95" rot="R270" align="top-left"/>
</instance>
<instance part="GND1" gate="1" x="535.94" y="-157.48" smashed="yes">
<attribute name="VALUE" x="533.4" y="-160.02" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="546.1" y="-157.48" smashed="yes">
<attribute name="VALUE" x="543.56" y="-160.02" size="1.778" layer="96"/>
</instance>
<instance part="GND3" gate="1" x="556.26" y="-157.48" smashed="yes">
<attribute name="VALUE" x="553.72" y="-160.02" size="1.778" layer="96"/>
</instance>
<instance part="GND4" gate="1" x="579.12" y="-157.48" smashed="yes">
<attribute name="VALUE" x="576.58" y="-160.02" size="1.778" layer="96"/>
</instance>
<instance part="GND5" gate="1" x="589.28" y="-157.48" smashed="yes">
<attribute name="VALUE" x="586.74" y="-160.02" size="1.778" layer="96"/>
</instance>
<instance part="GND6" gate="1" x="599.44" y="-157.48" smashed="yes">
<attribute name="VALUE" x="596.9" y="-160.02" size="1.778" layer="96"/>
</instance>
<instance part="GND7" gate="1" x="622.3" y="-157.48" smashed="yes">
<attribute name="VALUE" x="619.76" y="-160.02" size="1.778" layer="96"/>
</instance>
<instance part="GND8" gate="1" x="632.46" y="-157.48" smashed="yes">
<attribute name="VALUE" x="629.92" y="-160.02" size="1.778" layer="96"/>
</instance>
<instance part="GND9" gate="1" x="642.62" y="-157.48" smashed="yes">
<attribute name="VALUE" x="640.08" y="-160.02" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<wire x1="624.84" y1="-152.4" x2="627.38" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="627.38" y1="-152.4" x2="627.38" y2="-165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="635" y1="-152.4" x2="637.54" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="637.54" y1="-152.4" x2="637.54" y2="-165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="642.62" y1="-152.4" x2="647.7" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="647.7" y1="-152.4" x2="647.7" y2="-165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="581.66" y1="-152.4" x2="584.2" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="584.2" y1="-152.4" x2="584.2" y2="-162.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="589.28" y1="-152.4" x2="594.36" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="594.36" y1="-152.4" x2="594.36" y2="-165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="599.44" y1="-152.4" x2="604.52" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="604.52" y1="-152.4" x2="604.52" y2="-165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="538.48" y1="-149.86" x2="541.02" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="541.02" y1="-149.86" x2="541.02" y2="-165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="546.1" y1="-149.86" x2="551.18" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-149.86" x2="551.18" y2="-165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="556.26" y1="-152.4" x2="563.88" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="563.88" y1="-152.4" x2="563.88" y2="-172.72" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
