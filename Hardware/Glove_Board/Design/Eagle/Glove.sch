<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.05" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
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
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="14" fill="1" visible="no" active="no"/>
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
<library name="stm32f4">
<packages>
<package name="LQFP64">
<smd name="1" x="-3.7" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="2" x="-3.2" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="3" x="-2.7" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="4" x="-2.2" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="5" x="-1.7" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="6" x="-1.2" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="7" x="-0.7" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="8" x="-0.2" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="9" x="0.3" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="10" x="0.8" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="11" x="1.3" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="12" x="1.8" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="13" x="2.3" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="14" x="2.8" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="15" x="3.3" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="16" x="3.8" y="-4.3" dx="1.2" dy="0.3" layer="1" rot="R90"/>
<smd name="17" x="4.675" y="-3.425" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="18" x="4.675" y="-2.925" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="19" x="4.675" y="-2.425" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="20" x="4.675" y="-1.925" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="21" x="4.675" y="-1.425" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="22" x="4.675" y="-0.925" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="23" x="4.675" y="-0.425" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="24" x="4.675" y="0.075" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="25" x="4.675" y="0.575" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="26" x="4.675" y="1.075" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="27" x="4.675" y="1.575" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="28" x="4.675" y="2.075" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="29" x="4.675" y="2.575" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="30" x="4.675" y="3.075" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="31" x="4.675" y="3.575" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="32" x="4.675" y="4.075" dx="1.2" dy="0.3" layer="1" rot="R180"/>
<smd name="33" x="3.8" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="34" x="3.3" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="35" x="2.8" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="36" x="2.3" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="37" x="1.8" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="38" x="1.3" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="39" x="0.8" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="40" x="0.3" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="41" x="-0.2" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="42" x="-0.7" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="43" x="-1.2" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="44" x="-1.7" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="45" x="-2.2" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="46" x="-2.7" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="47" x="-3.2" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="48" x="-3.7" y="4.95" dx="1.2" dy="0.3" layer="1" rot="R270"/>
<smd name="49" x="-4.575" y="4.075" dx="1.2" dy="0.3" layer="1"/>
<smd name="50" x="-4.575" y="3.575" dx="1.2" dy="0.3" layer="1"/>
<smd name="51" x="-4.575" y="3.075" dx="1.2" dy="0.3" layer="1"/>
<smd name="52" x="-4.575" y="2.575" dx="1.2" dy="0.3" layer="1"/>
<smd name="53" x="-4.575" y="2.075" dx="1.2" dy="0.3" layer="1"/>
<smd name="54" x="-4.575" y="1.575" dx="1.2" dy="0.3" layer="1"/>
<smd name="55" x="-4.575" y="1.075" dx="1.2" dy="0.3" layer="1"/>
<smd name="56" x="-4.575" y="0.575" dx="1.2" dy="0.3" layer="1"/>
<smd name="57" x="-4.575" y="0.075" dx="1.2" dy="0.3" layer="1"/>
<smd name="58" x="-4.575" y="-0.425" dx="1.2" dy="0.3" layer="1"/>
<smd name="59" x="-4.575" y="-0.925" dx="1.2" dy="0.3" layer="1"/>
<smd name="60" x="-4.575" y="-1.425" dx="1.2" dy="0.3" layer="1"/>
<smd name="61" x="-4.575" y="-1.925" dx="1.2" dy="0.3" layer="1"/>
<smd name="62" x="-4.575" y="-2.425" dx="1.2" dy="0.3" layer="1"/>
<smd name="63" x="-4.575" y="-2.925" dx="1.2" dy="0.3" layer="1"/>
<smd name="64" x="-4.575" y="-3.425" dx="1.2" dy="0.3" layer="1"/>
<text x="-2.975" y="2.425" size="0.8128" layer="25">&gt;NAME</text>
<text x="-3.025" y="-2.45" size="0.8128" layer="27">&gt;VALUE</text>
<wire x1="-4.625" y1="4.95" x2="-4.625" y2="-3.725" width="0.2" layer="51"/>
<wire x1="-4.625" y1="-3.725" x2="-3.95" y2="-4.4" width="0.2" layer="51"/>
<wire x1="-3.95" y1="-4.4" x2="4.725" y2="-4.4" width="0.2" layer="51"/>
<wire x1="4.725" y1="-4.4" x2="4.725" y2="5.05" width="0.2" layer="51"/>
<wire x1="4.725" y1="5.05" x2="-4.625" y2="5.05" width="0.2" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="STM32F4_64PINS_FOXCARV1">
<wire x1="-30.48" y1="41.91" x2="-30.48" y2="-40.64" width="0.15" layer="94"/>
<wire x1="-30.48" y1="-40.64" x2="17.78" y2="-40.64" width="0.15" layer="94"/>
<wire x1="17.78" y1="-40.64" x2="17.78" y2="41.91" width="0.15" layer="94"/>
<wire x1="17.78" y1="41.91" x2="-30.48" y2="41.91" width="0.15" layer="94"/>
<pin name="VDD1" x="-12.7" y="49.53" rot="R270"/>
<text x="-20.32" y="6.35" size="1.778" layer="94">USB FS</text>
<text x="-20.32" y="-8.89" size="1.778" layer="94">microSD </text>
<text x="-20.32" y="16.51" size="1.778" layer="94">ESCs</text>
<text x="-20.32" y="24.13" size="1.778" layer="94">Servo</text>
<text x="-20.32" y="-20.32" size="1.778" layer="94">I2C</text>
<text x="-20.32" y="-26.67" size="1.778" layer="94">I2C</text>
<text x="-5.08" y="24.13" size="1.778" layer="94">Sense</text>
<text x="-5.08" y="7.62" size="1.778" layer="94">JTAG</text>
<text x="-5.08" y="15.24" size="1.778" layer="94">Motor
Driver</text>
<text x="-5.08" y="-3.81" size="1.778" layer="94">XBee</text>
<text x="-5.08" y="-13.97" size="1.778" layer="94">Front
Ping</text>
<text x="-5.08" y="-25.4" size="1.778" layer="94">Back
Ping</text>
<pin name="PA4" x="-38.1" y="24.13" direction="nc"/>
<pin name="PA5" x="-38.1" y="19.05" direction="nc"/>
<pin name="PA6" x="-38.1" y="16.51" direction="nc"/>
<pin name="PA7" x="-38.1" y="13.97" direction="nc"/>
<pin name="PC4" x="-38.1" y="11.43" direction="nc"/>
<pin name="PA9" x="-38.1" y="7.62" direction="nc"/>
<pin name="PA10" x="-38.1" y="5.08" direction="nc"/>
<pin name="PA11" x="-38.1" y="2.54" direction="nc"/>
<pin name="PA12" x="-38.1" y="0" direction="nc"/>
<pin name="PC8" x="-38.1" y="-6.35" direction="nc"/>
<pin name="PC9" x="-38.1" y="-8.89" direction="nc"/>
<pin name="PC10" x="-38.1" y="-11.43" direction="nc"/>
<pin name="PC11" x="-38.1" y="-13.97" direction="nc"/>
<pin name="PC12" x="-38.1" y="-16.51" direction="nc"/>
<pin name="PB6" x="-38.1" y="-20.32" direction="nc"/>
<pin name="PB7" x="-38.1" y="-22.86" direction="nc"/>
<pin name="PB10" x="-38.1" y="-26.67" direction="nc"/>
<pin name="PB11" x="-38.1" y="-29.21" direction="nc"/>
<pin name="PA1" x="25.4" y="25.4" direction="nc" rot="R180"/>
<pin name="PA2" x="25.4" y="22.86" direction="nc" rot="R180"/>
<pin name="PC13" x="25.4" y="19.05" direction="nc" rot="R180"/>
<pin name="PC14" x="25.4" y="16.51" direction="nc" rot="R180"/>
<pin name="PC15" x="25.4" y="13.97" direction="nc" rot="R180"/>
<pin name="PA13" x="25.4" y="8.89" direction="nc" rot="R180"/>
<pin name="PA14" x="25.4" y="6.35" direction="nc" rot="R180"/>
<pin name="PA15" x="25.4" y="3.81" direction="nc" rot="R180"/>
<pin name="PB3" x="25.4" y="1.27" direction="nc" rot="R180"/>
<pin name="PC6" x="25.4" y="-2.54" direction="nc" rot="R180"/>
<pin name="PC7" x="25.4" y="-5.08" direction="nc" rot="R180"/>
<pin name="PC0" x="25.4" y="-10.16" direction="nc" rot="R180"/>
<pin name="PC1" x="25.4" y="-12.7" direction="nc" rot="R180"/>
<pin name="PC2" x="25.4" y="-15.24" direction="nc" rot="R180"/>
<pin name="PC3" x="25.4" y="-17.78" direction="nc" rot="R180"/>
<pin name="PC5" x="25.4" y="-22.86" direction="nc" rot="R180"/>
<pin name="PB0" x="25.4" y="-25.4" direction="nc" rot="R180"/>
<pin name="PB1" x="25.4" y="-27.94" direction="nc" rot="R180"/>
<pin name="PB2" x="25.4" y="-30.48" direction="nc" rot="R180"/>
<pin name="PD2" x="-38.1" y="-3.81" direction="nc"/>
<pin name="VDD2" x="-10.16" y="49.53" direction="nc" rot="R270"/>
<pin name="VSS1" x="-25.4" y="-48.26" direction="nc" rot="R90"/>
<pin name="BOOT0" x="-27.94" y="49.53" direction="nc" rot="R270"/>
<pin name="PA3" x="6.35" y="-48.26" direction="nc" rot="R90"/>
<pin name="PB12" x="3.81" y="-48.26" direction="nc" rot="R90"/>
<pin name="PA8" x="1.27" y="-48.26" direction="nc" rot="R90"/>
<pin name="PB13" x="-1.27" y="-48.26" direction="nc" rot="R90"/>
<pin name="PB14" x="-3.81" y="-48.26" direction="nc" rot="R90"/>
<pin name="PB15" x="-6.35" y="-48.26" direction="nc" rot="R90"/>
<pin name="PB4" x="-8.89" y="-48.26" direction="nc" rot="R90"/>
<pin name="PB5" x="-11.43" y="-48.26" direction="nc" rot="R90"/>
<pin name="VDD3" x="-7.62" y="49.53" direction="nc" rot="R270"/>
<pin name="VDD4" x="-5.08" y="49.53" direction="nc" rot="R270"/>
<pin name="VDDA" x="0" y="49.53" direction="nc" rot="R270"/>
<pin name="PA0WKUP" x="-25.4" y="49.53" direction="nc" rot="R270"/>
<pin name="VSS2" x="-22.86" y="-48.26" direction="nc" rot="R90"/>
<pin name="VSSA" x="-17.78" y="-48.26" direction="nc" rot="R90"/>
<pin name="PH0" x="12.7" y="49.53" direction="nc" rot="R270"/>
<pin name="PH1" x="15.24" y="49.53" direction="nc" rot="R270"/>
<pin name="VCAP1" x="5.08" y="49.53" direction="nc" rot="R270"/>
<pin name="VCAP2" x="7.62" y="49.53" direction="nc" rot="R270"/>
<pin name="NRST" x="-22.86" y="49.53" direction="nc" rot="R270"/>
<pin name="PB9" x="8.89" y="-48.26" rot="R90"/>
<pin name="PB8" x="11.43" y="-48.26" rot="R90"/>
<pin name="VBAT" x="-20.32" y="49.53" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="STM32F4R_64PIN_FOXCAR">
<description>64-pin STM32F4 chip with symbol for Foxcar Control Board v1.</description>
<gates>
<gate name="G$1" symbol="STM32F4_64PINS_FOXCARV1" x="2.54" y="5.08"/>
</gates>
<devices>
<device name="" package="LQFP64">
<connects>
<connect gate="G$1" pin="BOOT0" pad="60"/>
<connect gate="G$1" pin="NRST" pad="7"/>
<connect gate="G$1" pin="PA0WKUP" pad="14"/>
<connect gate="G$1" pin="PA1" pad="15"/>
<connect gate="G$1" pin="PA10" pad="43"/>
<connect gate="G$1" pin="PA11" pad="44"/>
<connect gate="G$1" pin="PA12" pad="45"/>
<connect gate="G$1" pin="PA13" pad="46"/>
<connect gate="G$1" pin="PA14" pad="49"/>
<connect gate="G$1" pin="PA15" pad="50"/>
<connect gate="G$1" pin="PA2" pad="16"/>
<connect gate="G$1" pin="PA3" pad="17"/>
<connect gate="G$1" pin="PA4" pad="20"/>
<connect gate="G$1" pin="PA5" pad="21"/>
<connect gate="G$1" pin="PA6" pad="22"/>
<connect gate="G$1" pin="PA7" pad="23"/>
<connect gate="G$1" pin="PA8" pad="41"/>
<connect gate="G$1" pin="PA9" pad="42"/>
<connect gate="G$1" pin="PB0" pad="26"/>
<connect gate="G$1" pin="PB1" pad="27"/>
<connect gate="G$1" pin="PB10" pad="29"/>
<connect gate="G$1" pin="PB11" pad="30"/>
<connect gate="G$1" pin="PB12" pad="33"/>
<connect gate="G$1" pin="PB13" pad="34"/>
<connect gate="G$1" pin="PB14" pad="35"/>
<connect gate="G$1" pin="PB15" pad="36"/>
<connect gate="G$1" pin="PB2" pad="28"/>
<connect gate="G$1" pin="PB3" pad="55"/>
<connect gate="G$1" pin="PB4" pad="56"/>
<connect gate="G$1" pin="PB5" pad="57"/>
<connect gate="G$1" pin="PB6" pad="58"/>
<connect gate="G$1" pin="PB7" pad="59"/>
<connect gate="G$1" pin="PB8" pad="61"/>
<connect gate="G$1" pin="PB9" pad="62"/>
<connect gate="G$1" pin="PC0" pad="8"/>
<connect gate="G$1" pin="PC1" pad="9"/>
<connect gate="G$1" pin="PC10" pad="51"/>
<connect gate="G$1" pin="PC11" pad="52"/>
<connect gate="G$1" pin="PC12" pad="53"/>
<connect gate="G$1" pin="PC13" pad="2"/>
<connect gate="G$1" pin="PC14" pad="3"/>
<connect gate="G$1" pin="PC15" pad="4"/>
<connect gate="G$1" pin="PC2" pad="10"/>
<connect gate="G$1" pin="PC3" pad="11"/>
<connect gate="G$1" pin="PC4" pad="24"/>
<connect gate="G$1" pin="PC5" pad="25"/>
<connect gate="G$1" pin="PC6" pad="37"/>
<connect gate="G$1" pin="PC7" pad="38"/>
<connect gate="G$1" pin="PC8" pad="39"/>
<connect gate="G$1" pin="PC9" pad="40"/>
<connect gate="G$1" pin="PD2" pad="54"/>
<connect gate="G$1" pin="PH0" pad="5"/>
<connect gate="G$1" pin="PH1" pad="6"/>
<connect gate="G$1" pin="VBAT" pad="1"/>
<connect gate="G$1" pin="VCAP1" pad="31"/>
<connect gate="G$1" pin="VCAP2" pad="47"/>
<connect gate="G$1" pin="VDD1" pad="19"/>
<connect gate="G$1" pin="VDD2" pad="32"/>
<connect gate="G$1" pin="VDD3" pad="48"/>
<connect gate="G$1" pin="VDD4" pad="64"/>
<connect gate="G$1" pin="VDDA" pad="13"/>
<connect gate="G$1" pin="VSS1" pad="18"/>
<connect gate="G$1" pin="VSS2" pad="63"/>
<connect gate="G$1" pin="VSSA" pad="12"/>
</connects>
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
<part name="U$1" library="stm32f4" deviceset="STM32F4R_64PIN_FOXCAR" device=""/>
</parts>
<sheets>
<sheet>
<description>MCU Pinout</description>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="81.28" y="43.18"/>
</instances>
<busses>
</busses>
<nets>
<net name="SYS_JTMS-SWDIO" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PA13"/>
<wire x1="106.68" y1="52.07" x2="125.73" y2="52.07" width="0.1524" layer="91"/>
<label x="125.73" y="52.07" size="1.778" layer="95"/>
</segment>
</net>
<net name="SYS_JTCK-SWCLK" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PA14"/>
<wire x1="106.68" y1="49.53" x2="125.73" y2="49.53" width="0.1524" layer="91"/>
<label x="125.73" y="49.53" size="1.778" layer="95"/>
</segment>
</net>
<net name="SYS_JTDI" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PA15"/>
<wire x1="106.68" y1="46.99" x2="125.73" y2="46.99" width="0.1524" layer="91"/>
<label x="125.73" y="46.99" size="1.778" layer="95"/>
</segment>
</net>
<net name="SYS_JTDO-SWO" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PB3"/>
<wire x1="106.68" y1="44.45" x2="125.73" y2="44.45" width="0.1524" layer="91"/>
<label x="125.73" y="44.45" size="1.778" layer="95"/>
</segment>
</net>
<net name="USB_OTG_FS_DP" class="0">
<segment>
<wire x1="24.13" y1="43.18" x2="43.18" y2="43.18" width="0.1524" layer="91"/>
<label x="24.13" y="43.18" size="1.778" layer="95" rot="MR0"/>
<pinref part="U$1" gate="G$1" pin="PA12"/>
</segment>
</net>
<net name="USB_OTG_FS_VBUS" class="0">
<segment>
<wire x1="24.13" y1="50.8" x2="43.18" y2="50.8" width="0.1524" layer="91"/>
<label x="24.13" y="50.8" size="1.778" layer="95" rot="MR0"/>
<pinref part="U$1" gate="G$1" pin="PA9"/>
</segment>
</net>
<net name="USB_OTG_FS_DM" class="0">
<segment>
<wire x1="24.13" y1="45.72" x2="43.18" y2="45.72" width="0.1524" layer="91"/>
<label x="24.13" y="45.72" size="1.778" layer="95" rot="MR0"/>
<pinref part="U$1" gate="G$1" pin="PA11"/>
</segment>
</net>
<net name="USART2_RX" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PA3"/>
<wire x1="125.73" y1="-15.24" x2="87.63" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="87.63" y1="-15.24" x2="87.63" y2="-5.08" width="0.1524" layer="91"/>
<label x="125.73" y="-15.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="USART2_TX" class="0">
<segment>
<wire x1="106.68" y1="66.04" x2="125.73" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PA2"/>
<label x="125.73" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="SYS_JTRST" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PB4"/>
<wire x1="72.39" y1="-5.08" x2="72.39" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="72.39" y1="-17.78" x2="24.13" y2="-17.78" width="0.1524" layer="91"/>
<label x="24.13" y="-17.78" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="USART2_CTS" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PA0WKUP"/>
<wire x1="55.88" y1="92.71" x2="55.88" y2="99.06" width="0.1524" layer="91"/>
<wire x1="55.88" y1="99.06" x2="24.13" y2="99.06" width="0.1524" layer="91"/>
<label x="24.13" y="99.06" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="USART2_RTS" class="0">
<segment>
<wire x1="106.68" y1="68.58" x2="125.73" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PA1"/>
<label x="125.73" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI1_SCK" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PA5"/>
<wire x1="43.18" y1="62.23" x2="24.13" y2="62.23" width="0.1524" layer="91"/>
<label x="24.13" y="62.23" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SPI1_MISO" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PA6"/>
<wire x1="43.18" y1="59.69" x2="24.13" y2="59.69" width="0.1524" layer="91"/>
<label x="24.13" y="59.69" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SPI1_MOSI" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PA7"/>
<wire x1="43.18" y1="57.15" x2="24.13" y2="57.15" width="0.1524" layer="91"/>
<label x="24.13" y="57.15" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SPI1_CS2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PC4"/>
<wire x1="43.18" y1="54.61" x2="24.13" y2="54.61" width="0.1524" layer="91"/>
<label x="24.13" y="54.61" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="USART2_CK" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PA4"/>
<wire x1="43.18" y1="67.31" x2="24.13" y2="67.31" width="0.1524" layer="91"/>
<label x="24.13" y="67.31" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SPI1_CS3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PC5"/>
<wire x1="106.68" y1="20.32" x2="125.73" y2="20.32" width="0.1524" layer="91"/>
<label x="125.73" y="20.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI1_CS4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PB0"/>
<wire x1="106.68" y1="17.78" x2="125.73" y2="17.78" width="0.1524" layer="91"/>
<label x="125.73" y="17.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI1_CS5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PB1"/>
<wire x1="106.68" y1="15.24" x2="125.73" y2="15.24" width="0.1524" layer="91"/>
<label x="125.73" y="15.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI1_CS6" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PB2"/>
<wire x1="106.68" y1="12.7" x2="125.73" y2="12.7" width="0.1524" layer="91"/>
<label x="125.73" y="12.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI2_MISO" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PC2"/>
<wire x1="106.68" y1="27.94" x2="125.73" y2="27.94" width="0.1524" layer="91"/>
<label x="125.73" y="27.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI2_MOSI" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PC3"/>
<wire x1="106.68" y1="25.4" x2="125.73" y2="25.4" width="0.1524" layer="91"/>
<label x="125.73" y="25.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI2_SCK" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PB10"/>
<wire x1="43.18" y1="16.51" x2="24.13" y2="16.51" width="0.1524" layer="91"/>
<label x="24.13" y="16.51" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="NRST" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="NRST"/>
<wire x1="58.42" y1="92.71" x2="58.42" y2="102.87" width="0.1524" layer="91"/>
<wire x1="58.42" y1="102.87" x2="24.13" y2="102.87" width="0.1524" layer="91"/>
<label x="24.13" y="102.87" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VDD1"/>
<wire x1="68.58" y1="92.71" x2="68.58" y2="95.25" width="0.1524" layer="91"/>
<wire x1="68.58" y1="95.25" x2="71.12" y2="95.25" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VDD4"/>
<wire x1="71.12" y1="95.25" x2="73.66" y2="95.25" width="0.1524" layer="91"/>
<wire x1="73.66" y1="95.25" x2="76.2" y2="95.25" width="0.1524" layer="91"/>
<wire x1="76.2" y1="95.25" x2="76.2" y2="92.71" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VDD3"/>
<wire x1="73.66" y1="92.71" x2="73.66" y2="95.25" width="0.1524" layer="91"/>
<junction x="73.66" y="95.25"/>
<pinref part="U$1" gate="G$1" pin="VDD2"/>
<wire x1="71.12" y1="92.71" x2="71.12" y2="95.25" width="0.1524" layer="91"/>
<junction x="71.12" y="95.25"/>
<wire x1="68.58" y1="95.25" x2="68.58" y2="106.68" width="0.1524" layer="91"/>
<wire x1="68.58" y1="106.68" x2="24.13" y2="106.68" width="0.1524" layer="91"/>
<junction x="68.58" y="95.25"/>
<label x="24.13" y="106.68" size="1.778" layer="95" rot="MR0"/>
<pinref part="U$1" gate="G$1" pin="VDDA"/>
<wire x1="81.28" y1="92.71" x2="81.28" y2="95.25" width="0.1524" layer="91"/>
<wire x1="81.28" y1="95.25" x2="76.2" y2="95.25" width="0.1524" layer="91"/>
<junction x="76.2" y="95.25"/>
</segment>
</net>
<net name="VSS" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VSSA"/>
<wire x1="63.5" y1="-5.08" x2="63.5" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-7.62" x2="58.42" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VSS1"/>
<wire x1="58.42" y1="-7.62" x2="55.88" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-7.62" x2="55.88" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VSS2"/>
<wire x1="58.42" y1="-5.08" x2="58.42" y2="-7.62" width="0.1524" layer="91"/>
<junction x="58.42" y="-7.62"/>
<wire x1="55.88" y1="-7.62" x2="24.13" y2="-7.62" width="0.1524" layer="91"/>
<junction x="55.88" y="-7.62"/>
<label x="24.13" y="-7.62" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SPI2_CS2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PC6"/>
<wire x1="106.68" y1="40.64" x2="125.73" y2="40.64" width="0.1524" layer="91"/>
<label x="125.73" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI2_CS1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PC7"/>
<wire x1="106.68" y1="38.1" x2="125.73" y2="38.1" width="0.1524" layer="91"/>
<label x="125.73" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI2_CS6" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PB12"/>
<wire x1="85.09" y1="-5.08" x2="85.09" y2="-19.05" width="0.1524" layer="91"/>
<wire x1="85.09" y1="-19.05" x2="125.73" y2="-19.05" width="0.1524" layer="91"/>
<label x="125.73" y="-19.05" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI2_CS5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PB13"/>
<wire x1="80.01" y1="-5.08" x2="80.01" y2="-26.67" width="0.1524" layer="91"/>
<wire x1="80.01" y1="-26.67" x2="125.73" y2="-26.67" width="0.1524" layer="91"/>
<label x="125.73" y="-26.67" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI2_CS4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PB14"/>
<wire x1="77.47" y1="-5.08" x2="77.47" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="77.47" y1="-25.4" x2="24.13" y2="-25.4" width="0.1524" layer="91"/>
<label x="24.13" y="-25.4" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SPI2_CS3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PB15"/>
<wire x1="74.93" y1="-5.08" x2="74.93" y2="-21.59" width="0.1524" layer="91"/>
<wire x1="74.93" y1="-21.59" x2="24.13" y2="-21.59" width="0.1524" layer="91"/>
<label x="24.13" y="-21.59" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SPI3_MOSI" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PC12"/>
<wire x1="43.18" y1="26.67" x2="24.13" y2="26.67" width="0.1524" layer="91"/>
<label x="24.13" y="26.67" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SPI3_MISO" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PC11"/>
<wire x1="43.18" y1="29.21" x2="24.13" y2="29.21" width="0.1524" layer="91"/>
<label x="24.13" y="29.21" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SPI3_SCK" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PC10"/>
<wire x1="43.18" y1="31.75" x2="24.13" y2="31.75" width="0.1524" layer="91"/>
<label x="24.13" y="31.75" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SPI3_CS1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PD2"/>
<wire x1="43.18" y1="39.37" x2="24.13" y2="39.37" width="0.1524" layer="91"/>
<label x="24.13" y="39.37" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SPI3_CS2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PB5"/>
<wire x1="69.85" y1="-5.08" x2="69.85" y2="-13.97" width="0.1524" layer="91"/>
<wire x1="69.85" y1="-13.97" x2="24.13" y2="-13.97" width="0.1524" layer="91"/>
<label x="24.13" y="-13.97" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SPI3_CS3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PB6"/>
<wire x1="43.18" y1="22.86" x2="24.13" y2="22.86" width="0.1524" layer="91"/>
<label x="24.13" y="22.86" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SPI3_CS4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PB7"/>
<wire x1="43.18" y1="20.32" x2="24.13" y2="20.32" width="0.1524" layer="91"/>
<label x="24.13" y="20.32" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="RCC_OSC_OUT" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PH1"/>
<wire x1="96.52" y1="92.71" x2="96.52" y2="95.25" width="0.1524" layer="91"/>
<wire x1="96.52" y1="95.25" x2="125.73" y2="95.25" width="0.1524" layer="91"/>
<label x="125.73" y="95.25" size="1.778" layer="95"/>
</segment>
</net>
<net name="RCC_OSC_IN" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PH0"/>
<wire x1="93.98" y1="92.71" x2="93.98" y2="99.06" width="0.1524" layer="91"/>
<wire x1="93.98" y1="99.06" x2="125.73" y2="99.06" width="0.1524" layer="91"/>
<label x="125.73" y="99.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPI1_CS1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PC1"/>
<wire x1="106.68" y1="30.48" x2="125.73" y2="30.48" width="0.1524" layer="91"/>
<label x="125.73" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<description>Accelerometer Pinouts</description>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
<sheet>
<description>USB and Power</description>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
<sheet>
<description>UART and JTAG</description>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
