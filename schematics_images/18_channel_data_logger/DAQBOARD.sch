<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="yes" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="yes" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="yes" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="yes" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="yes" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="yes" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="yes" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="yes" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="yes" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="yes" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="yes" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="yes" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="yes" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="yes" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="yes" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="yes" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="yes" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="yes" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="no"/>
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
<library name="microchip">
<description>&lt;b&gt;Microchip PIC Microcontrollers and other Devices&lt;/b&gt;&lt;p&gt;
Based on the following sources :
&lt;ul&gt;
&lt;li&gt;Microchip Data Book, 1993
&lt;li&gt;THE EMERGING WORLD STANDARD, 1995/1996
&lt;li&gt;Microchip, Technical Library CD-ROM, June 1998
&lt;li&gt;www.microchip.com
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="TQFP100-12X12">
<description>&lt;b&gt;TQFP100_12X12&lt;/b&gt;&lt;p&gt;
Auto generated by &lt;i&gt;make-symbol-device-package-bsdl.ulp Rev. 41&lt;/i&gt;&lt;br&gt;</description>
<wire x1="-5.8984" y1="5.4" x2="-5.4" y2="5.8984" width="0.2032" layer="21"/>
<wire x1="-5.8984" y1="-5.8984" x2="5.8984" y2="-5.8984" width="0.2032" layer="21"/>
<wire x1="5.8984" y1="-5.8984" x2="5.8984" y2="5.8984" width="0.2032" layer="21"/>
<wire x1="5.8984" y1="5.8984" x2="-5.4" y2="5.8984" width="0.2032" layer="21"/>
<wire x1="-5.8984" y1="5.4" x2="-5.8984" y2="-5.8984" width="0.2032" layer="21"/>
<smd name="1" x="-6.725" y="4.8" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="2" x="-6.725" y="4.4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="3" x="-6.725" y="4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="4" x="-6.725" y="3.6" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="5" x="-6.725" y="3.2" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="6" x="-6.725" y="2.8" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="7" x="-6.725" y="2.4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="8" x="-6.725" y="2" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="9" x="-6.725" y="1.6" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="10" x="-6.725" y="1.2" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="11" x="-6.725" y="0.8" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="12" x="-6.725" y="0.4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="13" x="-6.725" y="0" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="14" x="-6.725" y="-0.4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="15" x="-6.725" y="-0.8" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="16" x="-6.725" y="-1.2" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="17" x="-6.725" y="-1.6" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="18" x="-6.725" y="-2" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="19" x="-6.725" y="-2.4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="20" x="-6.725" y="-2.8" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="21" x="-6.725" y="-3.2" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="22" x="-6.725" y="-3.6" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="23" x="-6.725" y="-4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="24" x="-6.725" y="-4.4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="25" x="-6.725" y="-4.8" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="26" x="-4.8" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="27" x="-4.4" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="28" x="-4" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="29" x="-3.6" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="30" x="-3.2" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="31" x="-2.8" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="32" x="-2.4" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="33" x="-2" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="34" x="-1.6" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="35" x="-1.2" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="36" x="-0.8" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="37" x="-0.4" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="38" x="0" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="39" x="0.4" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="40" x="0.8" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="41" x="1.2" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="42" x="1.6" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="43" x="2" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="44" x="2.4" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="45" x="2.8" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="46" x="3.2" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="47" x="3.6" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="48" x="4" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="49" x="4.4" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="50" x="4.8" y="-6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="51" x="6.725" y="-4.8" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="52" x="6.725" y="-4.4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="53" x="6.725" y="-4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="54" x="6.725" y="-3.6" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="55" x="6.725" y="-3.2" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="56" x="6.725" y="-2.8" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="57" x="6.725" y="-2.4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="58" x="6.725" y="-2" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="59" x="6.725" y="-1.6" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="60" x="6.725" y="-1.2" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="61" x="6.725" y="-0.8" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="62" x="6.725" y="-0.4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="63" x="6.725" y="0" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="64" x="6.725" y="0.4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="65" x="6.725" y="0.8" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="66" x="6.725" y="1.2" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="67" x="6.725" y="1.6" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="68" x="6.725" y="2" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="69" x="6.725" y="2.4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="70" x="6.725" y="2.8" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="71" x="6.725" y="3.2" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="72" x="6.725" y="3.6" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="73" x="6.725" y="4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="74" x="6.725" y="4.4" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="75" x="6.725" y="4.8" dx="0.95" dy="0.25" layer="1" stop="no"/>
<smd name="76" x="4.8" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="77" x="4.4" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="78" x="4" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="79" x="3.6" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="80" x="3.2" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="81" x="2.8" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="82" x="2.4" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="83" x="2" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="84" x="1.6" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="85" x="1.2" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="86" x="0.8" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="87" x="0.4" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="88" x="0" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="89" x="-0.4" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="90" x="-0.8" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="91" x="-1.2" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="92" x="-1.6" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="93" x="-2" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="94" x="-2.4" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="95" x="-2.8" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="96" x="-3.2" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="97" x="-3.6" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="98" x="-4" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="99" x="-4.4" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<smd name="100" x="-4.8" y="6.725" dx="0.25" dy="0.95" layer="1" stop="no"/>
<text x="-7" y="7.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-7" y="-8.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-7" y1="4.685" x2="-6" y2="4.915" layer="51"/>
<rectangle x1="-7" y1="4.285" x2="-6" y2="4.515" layer="51"/>
<rectangle x1="-7" y1="3.885" x2="-6" y2="4.115" layer="51"/>
<rectangle x1="-7" y1="3.485" x2="-6" y2="3.715" layer="51"/>
<rectangle x1="-7" y1="3.085" x2="-6" y2="3.315" layer="51"/>
<rectangle x1="-7" y1="2.685" x2="-6" y2="2.915" layer="51"/>
<rectangle x1="-7" y1="2.285" x2="-6" y2="2.515" layer="51"/>
<rectangle x1="-7" y1="1.885" x2="-6" y2="2.115" layer="51"/>
<rectangle x1="-7" y1="1.485" x2="-6" y2="1.715" layer="51"/>
<rectangle x1="-7" y1="1.085" x2="-6" y2="1.315" layer="51"/>
<rectangle x1="-7" y1="0.685" x2="-6" y2="0.915" layer="51"/>
<rectangle x1="-7" y1="0.285" x2="-6" y2="0.515" layer="51"/>
<rectangle x1="-7" y1="-0.115" x2="-6" y2="0.115" layer="51"/>
<rectangle x1="-7" y1="-0.515" x2="-6" y2="-0.285" layer="51"/>
<rectangle x1="-7" y1="-0.915" x2="-6" y2="-0.685" layer="51"/>
<rectangle x1="-7" y1="-1.315" x2="-6" y2="-1.085" layer="51"/>
<rectangle x1="-7" y1="-1.715" x2="-6" y2="-1.485" layer="51"/>
<rectangle x1="-7" y1="-2.115" x2="-6" y2="-1.885" layer="51"/>
<rectangle x1="-7" y1="-2.515" x2="-6" y2="-2.285" layer="51"/>
<rectangle x1="-7" y1="-2.915" x2="-6" y2="-2.685" layer="51"/>
<rectangle x1="-7" y1="-3.315" x2="-6" y2="-3.085" layer="51"/>
<rectangle x1="-7" y1="-3.715" x2="-6" y2="-3.485" layer="51"/>
<rectangle x1="-7" y1="-4.115" x2="-6" y2="-3.885" layer="51"/>
<rectangle x1="-7" y1="-4.515" x2="-6" y2="-4.285" layer="51"/>
<rectangle x1="-7" y1="-4.915" x2="-6" y2="-4.685" layer="51"/>
<rectangle x1="-4.915" y1="-7" x2="-4.685" y2="-6" layer="51"/>
<rectangle x1="-4.515" y1="-7" x2="-4.285" y2="-6" layer="51"/>
<rectangle x1="-4.115" y1="-7" x2="-3.885" y2="-6" layer="51"/>
<rectangle x1="-3.715" y1="-7" x2="-3.485" y2="-6" layer="51"/>
<rectangle x1="-3.315" y1="-7" x2="-3.085" y2="-6" layer="51"/>
<rectangle x1="-2.915" y1="-7" x2="-2.685" y2="-6" layer="51"/>
<rectangle x1="-2.515" y1="-7" x2="-2.285" y2="-6" layer="51"/>
<rectangle x1="-2.115" y1="-7" x2="-1.885" y2="-6" layer="51"/>
<rectangle x1="-1.715" y1="-7" x2="-1.485" y2="-6" layer="51"/>
<rectangle x1="-1.315" y1="-7" x2="-1.085" y2="-6" layer="51"/>
<rectangle x1="-0.915" y1="-7" x2="-0.685" y2="-6" layer="51"/>
<rectangle x1="-0.515" y1="-7" x2="-0.285" y2="-6" layer="51"/>
<rectangle x1="-0.115" y1="-7" x2="0.115" y2="-6" layer="51"/>
<rectangle x1="0.285" y1="-7" x2="0.515" y2="-6" layer="51"/>
<rectangle x1="0.685" y1="-7" x2="0.915" y2="-6" layer="51"/>
<rectangle x1="1.085" y1="-7" x2="1.315" y2="-6" layer="51"/>
<rectangle x1="1.485" y1="-7" x2="1.715" y2="-6" layer="51"/>
<rectangle x1="1.885" y1="-7" x2="2.115" y2="-6" layer="51"/>
<rectangle x1="2.285" y1="-7" x2="2.515" y2="-6" layer="51"/>
<rectangle x1="2.685" y1="-7" x2="2.915" y2="-6" layer="51"/>
<rectangle x1="3.085" y1="-7" x2="3.315" y2="-6" layer="51"/>
<rectangle x1="3.485" y1="-7" x2="3.715" y2="-6" layer="51"/>
<rectangle x1="3.885" y1="-7" x2="4.115" y2="-6" layer="51"/>
<rectangle x1="4.285" y1="-7" x2="4.515" y2="-6" layer="51"/>
<rectangle x1="4.685" y1="-7" x2="4.915" y2="-6" layer="51"/>
<rectangle x1="6" y1="-4.915" x2="7" y2="-4.685" layer="51"/>
<rectangle x1="6" y1="-4.515" x2="7" y2="-4.285" layer="51"/>
<rectangle x1="6" y1="-4.115" x2="7" y2="-3.885" layer="51"/>
<rectangle x1="6" y1="-3.715" x2="7" y2="-3.485" layer="51"/>
<rectangle x1="6" y1="-3.315" x2="7" y2="-3.085" layer="51"/>
<rectangle x1="6" y1="-2.915" x2="7" y2="-2.685" layer="51"/>
<rectangle x1="6" y1="-2.515" x2="7" y2="-2.285" layer="51"/>
<rectangle x1="6" y1="-2.115" x2="7" y2="-1.885" layer="51"/>
<rectangle x1="6" y1="-1.715" x2="7" y2="-1.485" layer="51"/>
<rectangle x1="6" y1="-1.315" x2="7" y2="-1.085" layer="51"/>
<rectangle x1="6" y1="-0.915" x2="7" y2="-0.685" layer="51"/>
<rectangle x1="6" y1="-0.515" x2="7" y2="-0.285" layer="51"/>
<rectangle x1="6" y1="-0.115" x2="7" y2="0.115" layer="51"/>
<rectangle x1="6" y1="0.285" x2="7" y2="0.515" layer="51"/>
<rectangle x1="6" y1="0.685" x2="7" y2="0.915" layer="51"/>
<rectangle x1="6" y1="1.085" x2="7" y2="1.315" layer="51"/>
<rectangle x1="6" y1="1.485" x2="7" y2="1.715" layer="51"/>
<rectangle x1="6" y1="1.885" x2="7" y2="2.115" layer="51"/>
<rectangle x1="6" y1="2.285" x2="7" y2="2.515" layer="51"/>
<rectangle x1="6" y1="2.685" x2="7" y2="2.915" layer="51"/>
<rectangle x1="6" y1="3.085" x2="7" y2="3.315" layer="51"/>
<rectangle x1="6" y1="3.485" x2="7" y2="3.715" layer="51"/>
<rectangle x1="6" y1="3.885" x2="7" y2="4.115" layer="51"/>
<rectangle x1="6" y1="4.285" x2="7" y2="4.515" layer="51"/>
<rectangle x1="6" y1="4.685" x2="7" y2="4.915" layer="51"/>
<rectangle x1="4.685" y1="6" x2="4.915" y2="7" layer="51"/>
<rectangle x1="4.285" y1="6" x2="4.515" y2="7" layer="51"/>
<rectangle x1="3.885" y1="6" x2="4.115" y2="7" layer="51"/>
<rectangle x1="3.485" y1="6" x2="3.715" y2="7" layer="51"/>
<rectangle x1="3.085" y1="6" x2="3.315" y2="7" layer="51"/>
<rectangle x1="2.685" y1="6" x2="2.915" y2="7" layer="51"/>
<rectangle x1="2.285" y1="6" x2="2.515" y2="7" layer="51"/>
<rectangle x1="1.885" y1="6" x2="2.115" y2="7" layer="51"/>
<rectangle x1="1.485" y1="6" x2="1.715" y2="7" layer="51"/>
<rectangle x1="1.085" y1="6" x2="1.315" y2="7" layer="51"/>
<rectangle x1="0.685" y1="6" x2="0.915" y2="7" layer="51"/>
<rectangle x1="0.285" y1="6" x2="0.515" y2="7" layer="51"/>
<rectangle x1="-0.115" y1="6" x2="0.115" y2="7" layer="51"/>
<rectangle x1="-0.515" y1="6" x2="-0.285" y2="7" layer="51"/>
<rectangle x1="-0.915" y1="6" x2="-0.685" y2="7" layer="51"/>
<rectangle x1="-1.315" y1="6" x2="-1.085" y2="7" layer="51"/>
<rectangle x1="-1.715" y1="6" x2="-1.485" y2="7" layer="51"/>
<rectangle x1="-2.115" y1="6" x2="-1.885" y2="7" layer="51"/>
<rectangle x1="-2.515" y1="6" x2="-2.285" y2="7" layer="51"/>
<rectangle x1="-2.915" y1="6" x2="-2.685" y2="7" layer="51"/>
<rectangle x1="-3.315" y1="6" x2="-3.085" y2="7" layer="51"/>
<rectangle x1="-3.715" y1="6" x2="-3.485" y2="7" layer="51"/>
<rectangle x1="-4.115" y1="6" x2="-3.885" y2="7" layer="51"/>
<rectangle x1="-4.515" y1="6" x2="-4.285" y2="7" layer="51"/>
<rectangle x1="-4.915" y1="6" x2="-4.685" y2="7" layer="51"/>
<rectangle x1="-7.25" y1="4.65" x2="-6.2" y2="4.95" layer="29"/>
<rectangle x1="-7.25" y1="4.25" x2="-6.2" y2="4.55" layer="29"/>
<rectangle x1="-7.25" y1="3.85" x2="-6.2" y2="4.15" layer="29"/>
<rectangle x1="-7.25" y1="3.45" x2="-6.2" y2="3.75" layer="29"/>
<rectangle x1="-7.25" y1="3.05" x2="-6.2" y2="3.35" layer="29"/>
<rectangle x1="-7.25" y1="2.65" x2="-6.2" y2="2.95" layer="29"/>
<rectangle x1="-7.25" y1="2.25" x2="-6.2" y2="2.55" layer="29"/>
<rectangle x1="-7.25" y1="1.85" x2="-6.2" y2="2.15" layer="29"/>
<rectangle x1="-7.25" y1="1.45" x2="-6.2" y2="1.75" layer="29"/>
<rectangle x1="-7.25" y1="1.05" x2="-6.2" y2="1.35" layer="29"/>
<rectangle x1="-7.25" y1="0.65" x2="-6.2" y2="0.95" layer="29"/>
<rectangle x1="-7.25" y1="0.25" x2="-6.2" y2="0.55" layer="29"/>
<rectangle x1="-7.25" y1="-0.15" x2="-6.2" y2="0.15" layer="29"/>
<rectangle x1="-7.25" y1="-0.55" x2="-6.2" y2="-0.25" layer="29"/>
<rectangle x1="-7.25" y1="-0.95" x2="-6.2" y2="-0.65" layer="29"/>
<rectangle x1="-7.25" y1="-1.35" x2="-6.2" y2="-1.05" layer="29"/>
<rectangle x1="-7.25" y1="-1.75" x2="-6.2" y2="-1.45" layer="29"/>
<rectangle x1="-7.25" y1="-2.15" x2="-6.2" y2="-1.85" layer="29"/>
<rectangle x1="-7.25" y1="-2.55" x2="-6.2" y2="-2.25" layer="29"/>
<rectangle x1="-7.25" y1="-2.95" x2="-6.2" y2="-2.65" layer="29"/>
<rectangle x1="-7.25" y1="-3.35" x2="-6.2" y2="-3.05" layer="29"/>
<rectangle x1="-7.25" y1="-3.75" x2="-6.2" y2="-3.45" layer="29"/>
<rectangle x1="-7.25" y1="-4.15" x2="-6.2" y2="-3.85" layer="29"/>
<rectangle x1="-7.25" y1="-4.55" x2="-6.2" y2="-4.25" layer="29"/>
<rectangle x1="-7.25" y1="-4.95" x2="-6.2" y2="-4.65" layer="29"/>
<rectangle x1="-5.325" y1="-6.875" x2="-4.275" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="-4.925" y1="-6.875" x2="-3.875" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="-4.525" y1="-6.875" x2="-3.475" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="-4.125" y1="-6.875" x2="-3.075" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="-3.725" y1="-6.875" x2="-2.675" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="-3.325" y1="-6.875" x2="-2.275" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="-2.925" y1="-6.875" x2="-1.875" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="-2.525" y1="-6.875" x2="-1.475" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="-2.125" y1="-6.875" x2="-1.075" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="-1.725" y1="-6.875" x2="-0.675" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="-1.325" y1="-6.875" x2="-0.275" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="-0.925" y1="-6.875" x2="0.125" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="-0.525" y1="-6.875" x2="0.525" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="-0.125" y1="-6.875" x2="0.925" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="0.275" y1="-6.875" x2="1.325" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="0.675" y1="-6.875" x2="1.725" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="1.075" y1="-6.875" x2="2.125" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="1.475" y1="-6.875" x2="2.525" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="1.875" y1="-6.875" x2="2.925" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="2.275" y1="-6.875" x2="3.325" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="2.675" y1="-6.875" x2="3.725" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="3.075" y1="-6.875" x2="4.125" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="3.475" y1="-6.875" x2="4.525" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="3.875" y1="-6.875" x2="4.925" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="4.275" y1="-6.875" x2="5.325" y2="-6.575" layer="29" rot="R90"/>
<rectangle x1="6.2" y1="-4.95" x2="7.25" y2="-4.65" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="-4.55" x2="7.25" y2="-4.25" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="-4.15" x2="7.25" y2="-3.85" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="-3.75" x2="7.25" y2="-3.45" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="-3.35" x2="7.25" y2="-3.05" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="-2.95" x2="7.25" y2="-2.65" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="-2.55" x2="7.25" y2="-2.25" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="-2.15" x2="7.25" y2="-1.85" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="-1.75" x2="7.25" y2="-1.45" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="-1.35" x2="7.25" y2="-1.05" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="-0.95" x2="7.25" y2="-0.65" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="-0.55" x2="7.25" y2="-0.25" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="-0.15" x2="7.25" y2="0.15" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="0.25" x2="7.25" y2="0.55" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="0.65" x2="7.25" y2="0.95" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="1.05" x2="7.25" y2="1.35" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="1.45" x2="7.25" y2="1.75" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="1.85" x2="7.25" y2="2.15" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="2.25" x2="7.25" y2="2.55" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="2.65" x2="7.25" y2="2.95" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="3.05" x2="7.25" y2="3.35" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="3.45" x2="7.25" y2="3.75" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="3.85" x2="7.25" y2="4.15" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="4.25" x2="7.25" y2="4.55" layer="29" rot="R180"/>
<rectangle x1="6.2" y1="4.65" x2="7.25" y2="4.95" layer="29" rot="R180"/>
<rectangle x1="4.275" y1="6.575" x2="5.325" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="3.875" y1="6.575" x2="4.925" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="3.475" y1="6.575" x2="4.525" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="3.075" y1="6.575" x2="4.125" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="2.675" y1="6.575" x2="3.725" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="2.275" y1="6.575" x2="3.325" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="1.875" y1="6.575" x2="2.925" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="1.475" y1="6.575" x2="2.525" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="1.075" y1="6.575" x2="2.125" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="0.675" y1="6.575" x2="1.725" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="0.275" y1="6.575" x2="1.325" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-0.125" y1="6.575" x2="0.925" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-0.525" y1="6.575" x2="0.525" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-0.925" y1="6.575" x2="0.125" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-1.325" y1="6.575" x2="-0.275" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-1.725" y1="6.575" x2="-0.675" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-2.125" y1="6.575" x2="-1.075" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-2.525" y1="6.575" x2="-1.475" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-2.925" y1="6.575" x2="-1.875" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-3.325" y1="6.575" x2="-2.275" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-3.725" y1="6.575" x2="-2.675" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-4.125" y1="6.575" x2="-3.075" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-4.525" y1="6.575" x2="-3.475" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-4.925" y1="6.575" x2="-3.875" y2="6.875" layer="29" rot="R270"/>
<rectangle x1="-5.325" y1="6.575" x2="-4.275" y2="6.875" layer="29" rot="R270"/>
</package>
</packages>
<symbols>
<symbol name="DSPIC33FJ256GP710_TQFP">
<wire x1="-50.8" y1="-50.8" x2="50.8" y2="-50.8" width="0.254" layer="94"/>
<wire x1="50.8" y1="-50.8" x2="50.8" y2="50.8" width="0.254" layer="94"/>
<wire x1="50.8" y1="50.8" x2="-50.8" y2="50.8" width="0.254" layer="94"/>
<wire x1="-50.8" y1="50.8" x2="-50.8" y2="-50.8" width="0.254" layer="94"/>
<text x="-2.54" y="1.27" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="RG15" x="-53.34" y="30.48" length="short"/>
<pin name="VDD1" x="-53.34" y="27.94" length="short" direction="pwr"/>
<pin name="RE5" x="-53.34" y="25.4" length="short"/>
<pin name="RE6" x="-53.34" y="22.86" length="short"/>
<pin name="RE7" x="-53.34" y="20.32" length="short"/>
<pin name="RC1" x="-53.34" y="17.78" length="short"/>
<pin name="RC2" x="-53.34" y="15.24" length="short"/>
<pin name="RC3" x="-53.34" y="12.7" length="short"/>
<pin name="RC4" x="-53.34" y="10.16" length="short"/>
<pin name="RG6" x="-53.34" y="7.62" length="short"/>
<pin name="RG7" x="-53.34" y="5.08" length="short"/>
<pin name="RG8" x="-53.34" y="2.54" length="short"/>
<pin name="MCLR" x="-53.34" y="0" length="short"/>
<pin name="RG9" x="-53.34" y="-2.54" length="short"/>
<pin name="VSS2" x="-53.34" y="-5.08" length="short" direction="pwr"/>
<pin name="VDD2" x="-53.34" y="-7.62" length="short" direction="pwr"/>
<pin name="TMS" x="-53.34" y="-10.16" length="short" direction="in"/>
<pin name="RE8" x="-53.34" y="-12.7" length="short"/>
<pin name="RE9" x="-53.34" y="-15.24" length="short"/>
<pin name="RB5" x="-53.34" y="-17.78" length="short"/>
<pin name="RB4" x="-53.34" y="-20.32" length="short"/>
<pin name="RB3" x="-53.34" y="-22.86" length="short"/>
<pin name="RB2" x="-53.34" y="-25.4" length="short"/>
<pin name="RB1" x="-53.34" y="-27.94" length="short"/>
<pin name="RB0" x="-53.34" y="-30.48" length="short"/>
<pin name="RB6" x="-30.48" y="-53.34" length="short" rot="R90"/>
<pin name="RB7" x="-27.94" y="-53.34" length="short" rot="R90"/>
<pin name="RA9" x="-25.4" y="-53.34" length="short" rot="R90"/>
<pin name="RA10" x="-22.86" y="-53.34" length="short" rot="R90"/>
<pin name="AVDD" x="-20.32" y="-53.34" length="short" direction="pwr" rot="R90"/>
<pin name="AVSS" x="-17.78" y="-53.34" length="short" direction="pwr" rot="R90"/>
<pin name="RB8" x="-15.24" y="-53.34" length="short" rot="R90"/>
<pin name="RB9" x="-12.7" y="-53.34" length="short" rot="R90"/>
<pin name="RB10" x="-10.16" y="-53.34" length="short" rot="R90"/>
<pin name="RB11" x="-7.62" y="-53.34" length="short" rot="R90"/>
<pin name="VSS3" x="-5.08" y="-53.34" length="short" direction="pwr" rot="R90"/>
<pin name="VDD3" x="-2.54" y="-53.34" length="short" direction="pwr" rot="R90"/>
<pin name="TCK" x="0" y="-53.34" length="short" direction="in" rot="R90"/>
<pin name="RF13" x="2.54" y="-53.34" length="short" rot="R90"/>
<pin name="RF12" x="5.08" y="-53.34" length="short" rot="R90"/>
<pin name="RB12" x="7.62" y="-53.34" length="short" rot="R90"/>
<pin name="RB13" x="10.16" y="-53.34" length="short" rot="R90"/>
<pin name="RB14" x="12.7" y="-53.34" length="short" rot="R90"/>
<pin name="RB15" x="15.24" y="-53.34" length="short" rot="R90"/>
<pin name="VSS4" x="17.78" y="-53.34" length="short" direction="pwr" rot="R90"/>
<pin name="VDD4" x="20.32" y="-53.34" length="short" direction="pwr" rot="R90"/>
<pin name="RD14" x="22.86" y="-53.34" length="short" rot="R90"/>
<pin name="RD15" x="25.4" y="-53.34" length="short" rot="R90"/>
<pin name="RF4" x="27.94" y="-53.34" length="short" rot="R90"/>
<pin name="RF5" x="30.48" y="-53.34" length="short" rot="R90"/>
<pin name="RF3" x="53.34" y="-30.48" length="short" rot="R180"/>
<pin name="RF2" x="53.34" y="-27.94" length="short" rot="R180"/>
<pin name="RF8" x="53.34" y="-25.4" length="short" rot="R180"/>
<pin name="RF7" x="53.34" y="-22.86" length="short" rot="R180"/>
<pin name="RF6" x="53.34" y="-20.32" length="short" rot="R180"/>
<pin name="RG3" x="53.34" y="-17.78" length="short" rot="R180"/>
<pin name="RG2" x="53.34" y="-15.24" length="short" rot="R180"/>
<pin name="RA2" x="53.34" y="-12.7" length="short" rot="R180"/>
<pin name="RA3" x="53.34" y="-10.16" length="short" rot="R180"/>
<pin name="TDI" x="53.34" y="-7.62" length="short" direction="in" rot="R180"/>
<pin name="TDO" x="53.34" y="-5.08" length="short" direction="out" rot="R180"/>
<pin name="VDD5" x="53.34" y="-2.54" length="short" direction="pwr" rot="R180"/>
<pin name="RC12" x="53.34" y="0" length="short" rot="R180"/>
<pin name="RC15" x="53.34" y="2.54" length="short" rot="R180"/>
<pin name="VSS5" x="53.34" y="5.08" length="short" direction="pwr" rot="R180"/>
<pin name="RA14" x="53.34" y="7.62" length="short" rot="R180"/>
<pin name="RA15" x="53.34" y="10.16" length="short" rot="R180"/>
<pin name="RD8" x="53.34" y="12.7" length="short" rot="R180"/>
<pin name="RD9" x="53.34" y="15.24" length="short" rot="R180"/>
<pin name="RD10" x="53.34" y="17.78" length="short" rot="R180"/>
<pin name="RD11" x="53.34" y="20.32" length="short" rot="R180"/>
<pin name="RD0" x="53.34" y="22.86" length="short" rot="R180"/>
<pin name="RC13" x="53.34" y="25.4" length="short" rot="R180"/>
<pin name="RC14" x="53.34" y="27.94" length="short" rot="R180"/>
<pin name="VSS1" x="53.34" y="30.48" length="short" direction="pwr" rot="R180"/>
<pin name="RD1" x="30.48" y="53.34" length="short" rot="R270"/>
<pin name="RD2" x="27.94" y="53.34" length="short" rot="R270"/>
<pin name="RD3" x="25.4" y="53.34" length="short" rot="R270"/>
<pin name="RD12" x="22.86" y="53.34" length="short" rot="R270"/>
<pin name="RD13" x="20.32" y="53.34" length="short" rot="R270"/>
<pin name="RD4" x="17.78" y="53.34" length="short" rot="R270"/>
<pin name="RD5" x="15.24" y="53.34" length="short" rot="R270"/>
<pin name="RD6" x="12.7" y="53.34" length="short" rot="R270"/>
<pin name="RD7" x="10.16" y="53.34" length="short" rot="R270"/>
<pin name="VDDCORE" x="7.62" y="53.34" length="short" direction="pwr" rot="R270"/>
<pin name="VREG" x="5.08" y="53.34" length="short" direction="pas" rot="R270"/>
<pin name="RF0" x="2.54" y="53.34" length="short" rot="R270"/>
<pin name="RF1" x="0" y="53.34" length="short" rot="R270"/>
<pin name="RG1" x="-2.54" y="53.34" length="short" rot="R270"/>
<pin name="RG0" x="-5.08" y="53.34" length="short" rot="R270"/>
<pin name="RA6" x="-7.62" y="53.34" length="short" rot="R270"/>
<pin name="RA7" x="-10.16" y="53.34" length="short" rot="R270"/>
<pin name="RE0" x="-12.7" y="53.34" length="short" rot="R270"/>
<pin name="RE1" x="-15.24" y="53.34" length="short" rot="R270"/>
<pin name="RG14" x="-17.78" y="53.34" length="short" rot="R270"/>
<pin name="RG12" x="-20.32" y="53.34" length="short" rot="R270"/>
<pin name="RG13" x="-22.86" y="53.34" length="short" rot="R270"/>
<pin name="RE2" x="-25.4" y="53.34" length="short" rot="R270"/>
<pin name="RE3" x="-27.94" y="53.34" length="short" rot="R270"/>
<pin name="RE4" x="-30.48" y="53.34" length="short" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DSPIC33FJ256GP710" prefix="IC">
<description>&lt;b&gt;dsPIC33FJ256GP710_TQFP&lt;/b&gt; &lt;font color="red"&gt;edit this description&lt;/font&gt;&lt;p&gt;
Auto generated by &lt;i&gt;make-symbol-device-package-bsdl.ulp Rev. 41&lt;/i&gt;&lt;br&gt;
Source: dsPIC33FJ256GP710_TQFP.bsd</description>
<gates>
<gate name="G$1" symbol="DSPIC33FJ256GP710_TQFP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TQFP100-12X12">
<connects>
<connect gate="G$1" pin="AVDD" pad="30"/>
<connect gate="G$1" pin="AVSS" pad="31"/>
<connect gate="G$1" pin="MCLR" pad="13"/>
<connect gate="G$1" pin="RA10" pad="29"/>
<connect gate="G$1" pin="RA14" pad="66"/>
<connect gate="G$1" pin="RA15" pad="67"/>
<connect gate="G$1" pin="RA2" pad="58"/>
<connect gate="G$1" pin="RA3" pad="59"/>
<connect gate="G$1" pin="RA6" pad="91"/>
<connect gate="G$1" pin="RA7" pad="92"/>
<connect gate="G$1" pin="RA9" pad="28"/>
<connect gate="G$1" pin="RB0" pad="25"/>
<connect gate="G$1" pin="RB1" pad="24"/>
<connect gate="G$1" pin="RB10" pad="34"/>
<connect gate="G$1" pin="RB11" pad="35"/>
<connect gate="G$1" pin="RB12" pad="41"/>
<connect gate="G$1" pin="RB13" pad="42"/>
<connect gate="G$1" pin="RB14" pad="43"/>
<connect gate="G$1" pin="RB15" pad="44"/>
<connect gate="G$1" pin="RB2" pad="23"/>
<connect gate="G$1" pin="RB3" pad="22"/>
<connect gate="G$1" pin="RB4" pad="21"/>
<connect gate="G$1" pin="RB5" pad="20"/>
<connect gate="G$1" pin="RB6" pad="26"/>
<connect gate="G$1" pin="RB7" pad="27"/>
<connect gate="G$1" pin="RB8" pad="32"/>
<connect gate="G$1" pin="RB9" pad="33"/>
<connect gate="G$1" pin="RC1" pad="6"/>
<connect gate="G$1" pin="RC12" pad="63"/>
<connect gate="G$1" pin="RC13" pad="73"/>
<connect gate="G$1" pin="RC14" pad="74"/>
<connect gate="G$1" pin="RC15" pad="64"/>
<connect gate="G$1" pin="RC2" pad="7"/>
<connect gate="G$1" pin="RC3" pad="8"/>
<connect gate="G$1" pin="RC4" pad="9"/>
<connect gate="G$1" pin="RD0" pad="72"/>
<connect gate="G$1" pin="RD1" pad="76"/>
<connect gate="G$1" pin="RD10" pad="70"/>
<connect gate="G$1" pin="RD11" pad="71"/>
<connect gate="G$1" pin="RD12" pad="79"/>
<connect gate="G$1" pin="RD13" pad="80"/>
<connect gate="G$1" pin="RD14" pad="47"/>
<connect gate="G$1" pin="RD15" pad="48"/>
<connect gate="G$1" pin="RD2" pad="77"/>
<connect gate="G$1" pin="RD3" pad="78"/>
<connect gate="G$1" pin="RD4" pad="81"/>
<connect gate="G$1" pin="RD5" pad="82"/>
<connect gate="G$1" pin="RD6" pad="83"/>
<connect gate="G$1" pin="RD7" pad="84"/>
<connect gate="G$1" pin="RD8" pad="68"/>
<connect gate="G$1" pin="RD9" pad="69"/>
<connect gate="G$1" pin="RE0" pad="93"/>
<connect gate="G$1" pin="RE1" pad="94"/>
<connect gate="G$1" pin="RE2" pad="98"/>
<connect gate="G$1" pin="RE3" pad="99"/>
<connect gate="G$1" pin="RE4" pad="100"/>
<connect gate="G$1" pin="RE5" pad="3"/>
<connect gate="G$1" pin="RE6" pad="4"/>
<connect gate="G$1" pin="RE7" pad="5"/>
<connect gate="G$1" pin="RE8" pad="18"/>
<connect gate="G$1" pin="RE9" pad="19"/>
<connect gate="G$1" pin="RF0" pad="87"/>
<connect gate="G$1" pin="RF1" pad="88"/>
<connect gate="G$1" pin="RF12" pad="40"/>
<connect gate="G$1" pin="RF13" pad="39"/>
<connect gate="G$1" pin="RF2" pad="52"/>
<connect gate="G$1" pin="RF3" pad="51"/>
<connect gate="G$1" pin="RF4" pad="49"/>
<connect gate="G$1" pin="RF5" pad="50"/>
<connect gate="G$1" pin="RF6" pad="55"/>
<connect gate="G$1" pin="RF7" pad="54"/>
<connect gate="G$1" pin="RF8" pad="53"/>
<connect gate="G$1" pin="RG0" pad="90"/>
<connect gate="G$1" pin="RG1" pad="89"/>
<connect gate="G$1" pin="RG12" pad="96"/>
<connect gate="G$1" pin="RG13" pad="97"/>
<connect gate="G$1" pin="RG14" pad="95"/>
<connect gate="G$1" pin="RG15" pad="1"/>
<connect gate="G$1" pin="RG2" pad="57"/>
<connect gate="G$1" pin="RG3" pad="56"/>
<connect gate="G$1" pin="RG6" pad="10"/>
<connect gate="G$1" pin="RG7" pad="11"/>
<connect gate="G$1" pin="RG8" pad="12"/>
<connect gate="G$1" pin="RG9" pad="14"/>
<connect gate="G$1" pin="TCK" pad="38"/>
<connect gate="G$1" pin="TDI" pad="60"/>
<connect gate="G$1" pin="TDO" pad="61"/>
<connect gate="G$1" pin="TMS" pad="17"/>
<connect gate="G$1" pin="VDD1" pad="2"/>
<connect gate="G$1" pin="VDD2" pad="16"/>
<connect gate="G$1" pin="VDD3" pad="37"/>
<connect gate="G$1" pin="VDD4" pad="46"/>
<connect gate="G$1" pin="VDD5" pad="62"/>
<connect gate="G$1" pin="VDDCORE" pad="85"/>
<connect gate="G$1" pin="VREG" pad="86"/>
<connect gate="G$1" pin="VSS1" pad="75"/>
<connect gate="G$1" pin="VSS2" pad="15"/>
<connect gate="G$1" pin="VSS3" pad="36"/>
<connect gate="G$1" pin="VSS4" pad="45"/>
<connect gate="G$1" pin="VSS5" pad="65"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-panduit">
<description>&lt;b&gt;Panduit Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="057-026-0">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
series 057 contact pc board low profile headers&lt;p&gt;
angled</description>
<wire x1="-1.9" y1="-0.23" x2="-1.9" y2="5.86" width="0.2032" layer="21"/>
<wire x1="-1.9" y1="-0.23" x2="1.9" y2="-0.23" width="0.2032" layer="21"/>
<wire x1="1.9" y1="-0.23" x2="1.9" y2="5.86" width="0.2032" layer="21"/>
<wire x1="-15.96" y1="5.22" x2="-15.26" y2="3.25" width="0.4064" layer="21"/>
<wire x1="-15.26" y1="3.25" x2="-14.56" y2="5.22" width="0.4064" layer="21"/>
<wire x1="-14.56" y1="5.22" x2="-15.96" y2="5.22" width="0.4064" layer="21"/>
<wire x1="-20.37" y1="-2.54" x2="-20.37" y2="5.86" width="0.2032" layer="21"/>
<wire x1="20.37" y1="5.86" x2="20.37" y2="-2.44" width="0.2032" layer="21"/>
<wire x1="-20.32" y1="-2.54" x2="-17.78" y2="-2.54" width="0.2032" layer="21"/>
<wire x1="-17.78" y1="-2.54" x2="-17.78" y2="-5.98" width="0.2032" layer="21"/>
<wire x1="20.32" y1="-2.54" x2="17.78" y2="-2.54" width="0.2032" layer="21"/>
<wire x1="17.78" y1="-2.54" x2="17.78" y2="-6.05" width="0.2032" layer="21"/>
<wire x1="17.77" y1="-6.04" x2="-17.77" y2="-6.04" width="0.2032" layer="21"/>
<wire x1="-20.37" y1="5.86" x2="20.37" y2="5.86" width="0.2032" layer="21"/>
<pad name="1" x="-15.24" y="-5.08" drill="1" shape="octagon"/>
<pad name="2" x="-15.24" y="-2.54" drill="1" shape="octagon"/>
<pad name="3" x="-12.7" y="-5.08" drill="1" shape="octagon"/>
<pad name="4" x="-12.7" y="-2.54" drill="1" shape="octagon"/>
<pad name="5" x="-10.16" y="-5.08" drill="1" shape="octagon"/>
<pad name="6" x="-10.16" y="-2.54" drill="1" shape="octagon"/>
<pad name="7" x="-7.62" y="-5.08" drill="1" shape="octagon"/>
<pad name="8" x="-7.62" y="-2.54" drill="1" shape="octagon"/>
<pad name="9" x="-5.08" y="-5.08" drill="1" shape="octagon"/>
<pad name="10" x="-5.08" y="-2.54" drill="1" shape="octagon"/>
<pad name="11" x="-2.54" y="-5.08" drill="1" shape="octagon"/>
<pad name="12" x="-2.54" y="-2.54" drill="1" shape="octagon"/>
<pad name="13" x="0" y="-5.08" drill="1" shape="octagon"/>
<pad name="14" x="0" y="-2.54" drill="1" shape="octagon"/>
<pad name="15" x="2.54" y="-5.08" drill="1" shape="octagon"/>
<pad name="16" x="2.54" y="-2.54" drill="1" shape="octagon"/>
<pad name="17" x="5.08" y="-5.08" drill="1" shape="octagon"/>
<pad name="18" x="5.08" y="-2.54" drill="1" shape="octagon"/>
<pad name="19" x="7.62" y="-5.08" drill="1" shape="octagon"/>
<pad name="20" x="7.62" y="-2.54" drill="1" shape="octagon"/>
<pad name="21" x="10.16" y="-5.08" drill="1" shape="octagon"/>
<pad name="22" x="10.16" y="-2.54" drill="1" shape="octagon"/>
<pad name="23" x="12.7" y="-5.08" drill="1" shape="octagon"/>
<pad name="24" x="12.7" y="-2.54" drill="1" shape="octagon"/>
<pad name="25" x="15.24" y="-5.08" drill="1" shape="octagon"/>
<pad name="26" x="15.24" y="-2.54" drill="1" shape="octagon"/>
<text x="-15.24" y="-8.89" size="1.778" layer="25">&gt;NAME</text>
<text x="3.81" y="2.54" size="1.778" layer="27">&gt;VALUE</text>
<hole x="-23.64" y="3.66" drill="2.8"/>
<hole x="23.89" y="3.66" drill="2.8"/>
</package>
<package name="057-026-1">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
series 057 contact pc board low profile headers&lt;p&gt;
straight</description>
<wire x1="-1.9" y1="-3.32" x2="-1.9" y2="-4.03" width="0.2032" layer="21"/>
<wire x1="1.9" y1="-3.32" x2="1.9" y2="-4.03" width="0.2032" layer="21"/>
<wire x1="-17.66" y1="-1.97" x2="-16.96" y2="-3.04" width="0.4064" layer="21"/>
<wire x1="-16.96" y1="-3.04" x2="-16.26" y2="-1.97" width="0.4064" layer="21"/>
<wire x1="-16.26" y1="-1.97" x2="-17.66" y2="-1.97" width="0.4064" layer="21"/>
<wire x1="-20.37" y1="-4.1" x2="-20.37" y2="4.1" width="0.2032" layer="21"/>
<wire x1="-20.37" y1="-4.1" x2="20.37" y2="-4.1" width="0.2032" layer="21"/>
<wire x1="20.37" y1="-4.1" x2="20.37" y2="4.1" width="0.2032" layer="21"/>
<wire x1="20.37" y1="4.1" x2="-20.37" y2="4.1" width="0.2032" layer="21"/>
<wire x1="-19.57" y1="-3.3" x2="-19.57" y2="3.3" width="0.2032" layer="21"/>
<wire x1="-19.57" y1="3.3" x2="19.57" y2="3.3" width="0.2032" layer="21"/>
<wire x1="19.57" y1="3.3" x2="19.57" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="19.57" y1="-3.3" x2="1.9" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-1.9" y1="-3.3" x2="-19.57" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-20.37" y1="4.1" x2="-19.57" y2="3.3" width="0.2032" layer="21"/>
<wire x1="-20.37" y1="-4.1" x2="-19.57" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="20.37" y1="4.1" x2="19.57" y2="3.3" width="0.2032" layer="21"/>
<wire x1="19.57" y1="-3.3" x2="20.37" y2="-4.1" width="0.2032" layer="21"/>
<pad name="1" x="-15.24" y="-1.27" drill="1" shape="octagon"/>
<pad name="2" x="-15.24" y="1.27" drill="1" shape="octagon"/>
<pad name="3" x="-12.7" y="-1.27" drill="1" shape="octagon"/>
<pad name="4" x="-12.7" y="1.27" drill="1" shape="octagon"/>
<pad name="5" x="-10.16" y="-1.27" drill="1" shape="octagon"/>
<pad name="6" x="-10.16" y="1.27" drill="1" shape="octagon"/>
<pad name="7" x="-7.62" y="-1.27" drill="1" shape="octagon"/>
<pad name="8" x="-7.62" y="1.27" drill="1" shape="octagon"/>
<pad name="9" x="-5.08" y="-1.27" drill="1" shape="octagon"/>
<pad name="10" x="-5.08" y="1.27" drill="1" shape="octagon"/>
<pad name="11" x="-2.54" y="-1.27" drill="1" shape="octagon"/>
<pad name="12" x="-2.54" y="1.27" drill="1" shape="octagon"/>
<pad name="13" x="0" y="-1.27" drill="1" shape="octagon"/>
<pad name="14" x="0" y="1.27" drill="1" shape="octagon"/>
<pad name="15" x="2.54" y="-1.27" drill="1" shape="octagon"/>
<pad name="16" x="2.54" y="1.27" drill="1" shape="octagon"/>
<pad name="17" x="5.08" y="-1.27" drill="1" shape="octagon"/>
<pad name="18" x="5.08" y="1.27" drill="1" shape="octagon"/>
<pad name="19" x="7.62" y="-1.27" drill="1" shape="octagon"/>
<pad name="20" x="7.62" y="1.27" drill="1" shape="octagon"/>
<pad name="21" x="10.16" y="-1.27" drill="1" shape="octagon"/>
<pad name="22" x="10.16" y="1.27" drill="1" shape="octagon"/>
<pad name="23" x="12.7" y="-1.27" drill="1" shape="octagon"/>
<pad name="24" x="12.7" y="1.27" drill="1" shape="octagon"/>
<pad name="25" x="15.24" y="-1.27" drill="1" shape="octagon"/>
<pad name="26" x="15.24" y="1.27" drill="1" shape="octagon"/>
<text x="-15.22" y="-6.88" size="1.778" layer="25">&gt;NAME</text>
<text x="-15.97" y="4.55" size="1.778" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<text x="1.016" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-2.54" y="1.905" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M">
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<text x="1.016" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="057-026-" prefix="X">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
20-pin series 057 contact pc board low profile headers</description>
<gates>
<gate name="-1" symbol="MV" x="-10.16" y="43.18" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="12.7" y="43.18" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="-10.16" y="38.1" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="12.7" y="38.1" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="-10.16" y="33.02" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="M" x="12.7" y="33.02" addlevel="always" swaplevel="1"/>
<gate name="-7" symbol="M" x="-10.16" y="27.94" addlevel="always" swaplevel="1"/>
<gate name="-8" symbol="M" x="12.7" y="27.94" addlevel="always" swaplevel="1"/>
<gate name="-9" symbol="M" x="-10.16" y="22.86" addlevel="always" swaplevel="1"/>
<gate name="-10" symbol="M" x="12.7" y="22.86" addlevel="always" swaplevel="1"/>
<gate name="-11" symbol="M" x="-10.16" y="17.78" addlevel="always" swaplevel="1"/>
<gate name="-12" symbol="M" x="12.7" y="17.78" addlevel="always" swaplevel="1"/>
<gate name="-13" symbol="M" x="-10.16" y="12.7" addlevel="always" swaplevel="1"/>
<gate name="-14" symbol="M" x="12.7" y="12.7" addlevel="always" swaplevel="1"/>
<gate name="-15" symbol="M" x="-10.16" y="7.62" addlevel="always" swaplevel="1"/>
<gate name="-16" symbol="M" x="12.7" y="7.62" addlevel="always" swaplevel="1"/>
<gate name="-17" symbol="M" x="-10.16" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-18" symbol="M" x="12.7" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-19" symbol="M" x="-10.16" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-20" symbol="M" x="12.7" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-21" symbol="M" x="-10.16" y="-7.62" addlevel="always" swaplevel="1"/>
<gate name="-22" symbol="M" x="12.7" y="-7.62" addlevel="always" swaplevel="1"/>
<gate name="-23" symbol="M" x="-10.16" y="-12.7" addlevel="always" swaplevel="1"/>
<gate name="-24" symbol="M" x="12.7" y="-12.7" addlevel="always" swaplevel="1"/>
<gate name="-25" symbol="M" x="-10.16" y="-17.78" addlevel="always" swaplevel="1"/>
<gate name="-26" symbol="M" x="12.7" y="-17.78" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="0" package="057-026-0">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-10" pin="S" pad="10"/>
<connect gate="-11" pin="S" pad="11"/>
<connect gate="-12" pin="S" pad="12"/>
<connect gate="-13" pin="S" pad="13"/>
<connect gate="-14" pin="S" pad="14"/>
<connect gate="-15" pin="S" pad="15"/>
<connect gate="-16" pin="S" pad="16"/>
<connect gate="-17" pin="S" pad="17"/>
<connect gate="-18" pin="S" pad="18"/>
<connect gate="-19" pin="S" pad="19"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-20" pin="S" pad="20"/>
<connect gate="-21" pin="S" pad="21"/>
<connect gate="-22" pin="S" pad="22"/>
<connect gate="-23" pin="S" pad="23"/>
<connect gate="-24" pin="S" pad="24"/>
<connect gate="-25" pin="S" pad="25"/>
<connect gate="-26" pin="S" pad="26"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
<connect gate="-9" pin="S" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="1" package="057-026-1">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-10" pin="S" pad="10"/>
<connect gate="-11" pin="S" pad="11"/>
<connect gate="-12" pin="S" pad="12"/>
<connect gate="-13" pin="S" pad="13"/>
<connect gate="-14" pin="S" pad="14"/>
<connect gate="-15" pin="S" pad="15"/>
<connect gate="-16" pin="S" pad="16"/>
<connect gate="-17" pin="S" pad="17"/>
<connect gate="-18" pin="S" pad="18"/>
<connect gate="-19" pin="S" pad="19"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-20" pin="S" pad="20"/>
<connect gate="-21" pin="S" pad="21"/>
<connect gate="-22" pin="S" pad="22"/>
<connect gate="-23" pin="S" pad="23"/>
<connect gate="-24" pin="S" pad="24"/>
<connect gate="-25" pin="S" pad="25"/>
<connect gate="-26" pin="S" pad="26"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
<connect gate="-9" pin="S" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
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
<part name="IC1" library="microchip" deviceset="DSPIC33FJ256GP710" device=""/>
<part name="X1" library="con-panduit" deviceset="057-026-" device="1"/>
<part name="X2" library="con-panduit" deviceset="057-026-" device="1"/>
<part name="X3" library="con-panduit" deviceset="057-026-" device="1"/>
<part name="X4" library="con-panduit" deviceset="057-026-" device="1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="71.12" y="40.64"/>
<instance part="X1" gate="-1" x="10.16" y="71.12" rot="R180"/>
<instance part="X1" gate="-2" x="10.16" y="68.58" rot="R180"/>
<instance part="X1" gate="-3" x="10.16" y="66.04" rot="R180"/>
<instance part="X1" gate="-4" x="10.16" y="63.5" rot="R180"/>
<instance part="X1" gate="-5" x="10.16" y="60.96" rot="R180"/>
<instance part="X1" gate="-6" x="10.16" y="58.42" rot="R180"/>
<instance part="X1" gate="-7" x="10.16" y="55.88" rot="R180"/>
<instance part="X1" gate="-8" x="10.16" y="53.34" rot="R180"/>
<instance part="X1" gate="-9" x="10.16" y="50.8" rot="R180"/>
<instance part="X1" gate="-10" x="10.16" y="48.26" rot="R180"/>
<instance part="X1" gate="-11" x="10.16" y="45.72" rot="R180"/>
<instance part="X1" gate="-12" x="10.16" y="43.18" rot="R180"/>
<instance part="X1" gate="-13" x="10.16" y="40.64" rot="R180"/>
<instance part="X1" gate="-14" x="10.16" y="38.1" rot="R180"/>
<instance part="X1" gate="-15" x="10.16" y="35.56" rot="R180"/>
<instance part="X1" gate="-16" x="10.16" y="33.02" rot="R180"/>
<instance part="X1" gate="-17" x="10.16" y="30.48" rot="R180"/>
<instance part="X1" gate="-18" x="10.16" y="27.94" rot="R180"/>
<instance part="X1" gate="-19" x="10.16" y="25.4" rot="R180"/>
<instance part="X1" gate="-20" x="10.16" y="22.86" rot="R180"/>
<instance part="X1" gate="-21" x="10.16" y="20.32" rot="R180"/>
<instance part="X1" gate="-22" x="10.16" y="17.78" rot="R180"/>
<instance part="X1" gate="-23" x="10.16" y="15.24" rot="R180"/>
<instance part="X1" gate="-24" x="10.16" y="12.7" rot="R180"/>
<instance part="X1" gate="-25" x="10.16" y="10.16" rot="R180"/>
<instance part="X1" gate="-26" x="-12.7" y="15.24"/>
<instance part="X2" gate="-1" x="40.64" y="-20.32" rot="R270"/>
<instance part="X2" gate="-2" x="43.18" y="-20.32" rot="R270"/>
<instance part="X2" gate="-3" x="45.72" y="-20.32" rot="R270"/>
<instance part="X2" gate="-4" x="48.26" y="-20.32" rot="R270"/>
<instance part="X2" gate="-5" x="50.8" y="-20.32" rot="R270"/>
<instance part="X2" gate="-6" x="53.34" y="-20.32" rot="R270"/>
<instance part="X2" gate="-7" x="55.88" y="-20.32" rot="R270"/>
<instance part="X2" gate="-8" x="58.42" y="-20.32" rot="R270"/>
<instance part="X2" gate="-9" x="60.96" y="-20.32" rot="R270"/>
<instance part="X2" gate="-10" x="63.5" y="-20.32" rot="R270"/>
<instance part="X2" gate="-11" x="66.04" y="-20.32" rot="R270"/>
<instance part="X2" gate="-12" x="68.58" y="-20.32" rot="R270"/>
<instance part="X2" gate="-13" x="71.12" y="-20.32" rot="R270"/>
<instance part="X2" gate="-14" x="73.66" y="-20.32" rot="R270"/>
<instance part="X2" gate="-15" x="76.2" y="-20.32" rot="R270"/>
<instance part="X2" gate="-16" x="78.74" y="-20.32" rot="R270"/>
<instance part="X2" gate="-17" x="81.28" y="-20.32" rot="R270"/>
<instance part="X2" gate="-18" x="83.82" y="-20.32" rot="R270"/>
<instance part="X2" gate="-19" x="86.36" y="-20.32" rot="R270"/>
<instance part="X2" gate="-20" x="88.9" y="-20.32" rot="R270"/>
<instance part="X2" gate="-21" x="91.44" y="-20.32" rot="R270"/>
<instance part="X2" gate="-22" x="93.98" y="-20.32" rot="R270"/>
<instance part="X2" gate="-23" x="96.52" y="-20.32" rot="R270"/>
<instance part="X2" gate="-24" x="99.06" y="-20.32" rot="R270"/>
<instance part="X2" gate="-25" x="101.6" y="-20.32" rot="R270"/>
<instance part="X2" gate="-26" x="40.64" y="-50.8" rot="R270"/>
<instance part="X3" gate="-1" x="134.62" y="10.16"/>
<instance part="X3" gate="-2" x="134.62" y="12.7"/>
<instance part="X3" gate="-3" x="134.62" y="15.24"/>
<instance part="X3" gate="-4" x="134.62" y="17.78"/>
<instance part="X3" gate="-5" x="134.62" y="20.32"/>
<instance part="X3" gate="-6" x="134.62" y="22.86"/>
<instance part="X3" gate="-7" x="134.62" y="25.4"/>
<instance part="X3" gate="-8" x="134.62" y="27.94"/>
<instance part="X3" gate="-9" x="134.62" y="30.48"/>
<instance part="X3" gate="-10" x="134.62" y="33.02"/>
<instance part="X3" gate="-11" x="134.62" y="35.56"/>
<instance part="X3" gate="-12" x="134.62" y="38.1"/>
<instance part="X3" gate="-13" x="134.62" y="40.64"/>
<instance part="X3" gate="-14" x="134.62" y="43.18"/>
<instance part="X3" gate="-15" x="134.62" y="45.72"/>
<instance part="X3" gate="-16" x="134.62" y="48.26"/>
<instance part="X3" gate="-17" x="134.62" y="50.8"/>
<instance part="X3" gate="-18" x="134.62" y="53.34"/>
<instance part="X3" gate="-19" x="134.62" y="55.88"/>
<instance part="X3" gate="-20" x="134.62" y="58.42"/>
<instance part="X3" gate="-21" x="134.62" y="60.96"/>
<instance part="X3" gate="-22" x="134.62" y="63.5"/>
<instance part="X3" gate="-23" x="134.62" y="66.04"/>
<instance part="X3" gate="-24" x="134.62" y="68.58"/>
<instance part="X3" gate="-25" x="134.62" y="71.12"/>
<instance part="X3" gate="-26" x="180.34" y="10.16"/>
<instance part="X4" gate="-1" x="101.6" y="104.14" rot="R90"/>
<instance part="X4" gate="-2" x="99.06" y="104.14" rot="R90"/>
<instance part="X4" gate="-3" x="96.52" y="104.14" rot="R90"/>
<instance part="X4" gate="-4" x="93.98" y="104.14" rot="R90"/>
<instance part="X4" gate="-5" x="91.44" y="104.14" rot="R90"/>
<instance part="X4" gate="-6" x="88.9" y="104.14" rot="R90"/>
<instance part="X4" gate="-7" x="86.36" y="104.14" rot="R90"/>
<instance part="X4" gate="-8" x="83.82" y="104.14" rot="R90"/>
<instance part="X4" gate="-9" x="81.28" y="104.14" rot="R90"/>
<instance part="X4" gate="-10" x="78.74" y="104.14" rot="R90"/>
<instance part="X4" gate="-11" x="76.2" y="104.14" rot="R90"/>
<instance part="X4" gate="-12" x="73.66" y="104.14" rot="R90"/>
<instance part="X4" gate="-13" x="71.12" y="104.14" rot="R90"/>
<instance part="X4" gate="-14" x="68.58" y="104.14" rot="R90"/>
<instance part="X4" gate="-15" x="66.04" y="104.14" rot="R90"/>
<instance part="X4" gate="-16" x="63.5" y="104.14" rot="R90"/>
<instance part="X4" gate="-17" x="60.96" y="104.14" rot="R90"/>
<instance part="X4" gate="-18" x="58.42" y="104.14" rot="R90"/>
<instance part="X4" gate="-19" x="55.88" y="104.14" rot="R90"/>
<instance part="X4" gate="-20" x="53.34" y="104.14" rot="R90"/>
<instance part="X4" gate="-21" x="50.8" y="104.14" rot="R90"/>
<instance part="X4" gate="-22" x="48.26" y="104.14" rot="R90"/>
<instance part="X4" gate="-23" x="45.72" y="104.14" rot="R90"/>
<instance part="X4" gate="-24" x="43.18" y="104.14" rot="R90"/>
<instance part="X4" gate="-25" x="40.64" y="104.14" rot="R90"/>
<instance part="X4" gate="-26" x="195.58" y="152.4" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="X1" gate="-1" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RG15"/>
<wire x1="15.24" y1="71.12" x2="17.78" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VDD1"/>
<pinref part="X1" gate="-2" pin="S"/>
<wire x1="17.78" y1="68.58" x2="15.24" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RE5"/>
<pinref part="X1" gate="-3" pin="S"/>
<wire x1="17.78" y1="66.04" x2="15.24" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RE6"/>
<pinref part="X1" gate="-4" pin="S"/>
<wire x1="17.78" y1="63.5" x2="15.24" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RE7"/>
<pinref part="X1" gate="-5" pin="S"/>
<wire x1="17.78" y1="60.96" x2="15.24" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RC1"/>
<pinref part="X1" gate="-6" pin="S"/>
<wire x1="17.78" y1="58.42" x2="15.24" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RC2"/>
<pinref part="X1" gate="-7" pin="S"/>
<wire x1="17.78" y1="55.88" x2="15.24" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RC3"/>
<pinref part="X1" gate="-8" pin="S"/>
<wire x1="17.78" y1="53.34" x2="15.24" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RC4"/>
<pinref part="X1" gate="-9" pin="S"/>
<wire x1="17.78" y1="50.8" x2="15.24" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RG6"/>
<pinref part="X1" gate="-10" pin="S"/>
<wire x1="17.78" y1="48.26" x2="15.24" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RG7"/>
<pinref part="X1" gate="-11" pin="S"/>
<wire x1="17.78" y1="45.72" x2="15.24" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RG8"/>
<pinref part="X1" gate="-12" pin="S"/>
<wire x1="17.78" y1="43.18" x2="15.24" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="MCLR"/>
<pinref part="X1" gate="-13" pin="S"/>
<wire x1="17.78" y1="40.64" x2="15.24" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RG9"/>
<pinref part="X1" gate="-14" pin="S"/>
<wire x1="17.78" y1="38.1" x2="15.24" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VSS2"/>
<pinref part="X1" gate="-15" pin="S"/>
<wire x1="17.78" y1="35.56" x2="15.24" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VDD2"/>
<pinref part="X1" gate="-16" pin="S"/>
<wire x1="17.78" y1="33.02" x2="15.24" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="TMS"/>
<pinref part="X1" gate="-17" pin="S"/>
<wire x1="17.78" y1="30.48" x2="15.24" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RE8"/>
<pinref part="X1" gate="-18" pin="S"/>
<wire x1="17.78" y1="27.94" x2="15.24" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RE9"/>
<pinref part="X1" gate="-19" pin="S"/>
<wire x1="17.78" y1="25.4" x2="15.24" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB5"/>
<pinref part="X1" gate="-20" pin="S"/>
<wire x1="17.78" y1="22.86" x2="15.24" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB4"/>
<pinref part="X1" gate="-21" pin="S"/>
<wire x1="17.78" y1="20.32" x2="15.24" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB3"/>
<pinref part="X1" gate="-22" pin="S"/>
<wire x1="17.78" y1="17.78" x2="15.24" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB2"/>
<pinref part="X1" gate="-23" pin="S"/>
<wire x1="17.78" y1="15.24" x2="15.24" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB1"/>
<pinref part="X1" gate="-24" pin="S"/>
<wire x1="17.78" y1="12.7" x2="15.24" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB0"/>
<pinref part="X1" gate="-25" pin="S"/>
<wire x1="17.78" y1="10.16" x2="15.24" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="X2" gate="-1" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RB6"/>
<wire x1="40.64" y1="-15.24" x2="40.64" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="X2" gate="-2" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RB7"/>
<wire x1="43.18" y1="-15.24" x2="43.18" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="X2" gate="-3" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RA9"/>
<wire x1="45.72" y1="-15.24" x2="45.72" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="X2" gate="-4" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RA10"/>
<wire x1="48.26" y1="-15.24" x2="48.26" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="X2" gate="-5" pin="S"/>
<pinref part="IC1" gate="G$1" pin="AVDD"/>
<wire x1="50.8" y1="-15.24" x2="50.8" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="AVSS"/>
<pinref part="X2" gate="-6" pin="S"/>
<wire x1="53.34" y1="-12.7" x2="53.34" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB8"/>
<pinref part="X2" gate="-7" pin="S"/>
<wire x1="55.88" y1="-12.7" x2="55.88" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB9"/>
<pinref part="X2" gate="-8" pin="S"/>
<wire x1="58.42" y1="-12.7" x2="58.42" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB10"/>
<pinref part="X2" gate="-9" pin="S"/>
<wire x1="60.96" y1="-12.7" x2="60.96" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB11"/>
<pinref part="X2" gate="-10" pin="S"/>
<wire x1="63.5" y1="-12.7" x2="63.5" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VSS3"/>
<pinref part="X2" gate="-11" pin="S"/>
<wire x1="66.04" y1="-12.7" x2="66.04" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VDD3"/>
<pinref part="X2" gate="-12" pin="S"/>
<wire x1="68.58" y1="-12.7" x2="68.58" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="TCK"/>
<pinref part="X2" gate="-13" pin="S"/>
<wire x1="71.12" y1="-12.7" x2="71.12" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RF13"/>
<pinref part="X2" gate="-14" pin="S"/>
<wire x1="73.66" y1="-12.7" x2="73.66" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RF12"/>
<pinref part="X2" gate="-15" pin="S"/>
<wire x1="76.2" y1="-12.7" x2="76.2" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB12"/>
<pinref part="X2" gate="-16" pin="S"/>
<wire x1="78.74" y1="-12.7" x2="78.74" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB13"/>
<pinref part="X2" gate="-17" pin="S"/>
<wire x1="81.28" y1="-12.7" x2="81.28" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB14"/>
<pinref part="X2" gate="-18" pin="S"/>
<wire x1="83.82" y1="-12.7" x2="83.82" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB15"/>
<pinref part="X2" gate="-19" pin="S"/>
<wire x1="86.36" y1="-12.7" x2="86.36" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VSS4"/>
<pinref part="X2" gate="-20" pin="S"/>
<wire x1="88.9" y1="-12.7" x2="88.9" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VDD4"/>
<pinref part="X2" gate="-21" pin="S"/>
<wire x1="91.44" y1="-12.7" x2="91.44" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RD14"/>
<pinref part="X2" gate="-22" pin="S"/>
<wire x1="93.98" y1="-12.7" x2="93.98" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RD15"/>
<pinref part="X2" gate="-23" pin="S"/>
<wire x1="96.52" y1="-12.7" x2="96.52" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RF4"/>
<pinref part="X2" gate="-24" pin="S"/>
<wire x1="99.06" y1="-12.7" x2="99.06" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RF5"/>
<pinref part="X2" gate="-25" pin="S"/>
<wire x1="101.6" y1="-12.7" x2="101.6" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RF3"/>
<pinref part="X3" gate="-1" pin="S"/>
<wire x1="124.46" y1="10.16" x2="129.54" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="X3" gate="-2" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RF2"/>
<wire x1="129.54" y1="12.7" x2="124.46" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RF8"/>
<pinref part="X3" gate="-3" pin="S"/>
<wire x1="124.46" y1="15.24" x2="129.54" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="X3" gate="-4" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RF7"/>
<wire x1="129.54" y1="17.78" x2="124.46" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RF6"/>
<pinref part="X3" gate="-5" pin="S"/>
<wire x1="124.46" y1="20.32" x2="129.54" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="X3" gate="-6" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RG3"/>
<wire x1="129.54" y1="22.86" x2="124.46" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RG2"/>
<pinref part="X3" gate="-7" pin="S"/>
<wire x1="124.46" y1="25.4" x2="129.54" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="X3" gate="-8" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RA2"/>
<wire x1="129.54" y1="27.94" x2="124.46" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RA3"/>
<pinref part="X3" gate="-9" pin="S"/>
<wire x1="124.46" y1="30.48" x2="129.54" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<pinref part="X3" gate="-10" pin="S"/>
<pinref part="IC1" gate="G$1" pin="TDI"/>
<wire x1="129.54" y1="33.02" x2="124.46" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$61" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="TDO"/>
<pinref part="X3" gate="-11" pin="S"/>
<wire x1="124.46" y1="35.56" x2="129.54" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$62" class="0">
<segment>
<pinref part="X3" gate="-12" pin="S"/>
<pinref part="IC1" gate="G$1" pin="VDD5"/>
<wire x1="129.54" y1="38.1" x2="124.46" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$63" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RC12"/>
<pinref part="X3" gate="-13" pin="S"/>
<wire x1="124.46" y1="40.64" x2="129.54" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$64" class="0">
<segment>
<pinref part="X3" gate="-14" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RC15"/>
<wire x1="129.54" y1="43.18" x2="124.46" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$65" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VSS5"/>
<pinref part="X3" gate="-15" pin="S"/>
<wire x1="124.46" y1="45.72" x2="129.54" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$66" class="0">
<segment>
<pinref part="X3" gate="-16" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RA14"/>
<wire x1="129.54" y1="48.26" x2="124.46" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$67" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RA15"/>
<pinref part="X3" gate="-17" pin="S"/>
<wire x1="124.46" y1="50.8" x2="129.54" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$68" class="0">
<segment>
<pinref part="X3" gate="-18" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RD8"/>
<wire x1="129.54" y1="53.34" x2="124.46" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$69" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RD9"/>
<pinref part="X3" gate="-19" pin="S"/>
<wire x1="124.46" y1="55.88" x2="129.54" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$70" class="0">
<segment>
<pinref part="X3" gate="-20" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RD10"/>
<wire x1="129.54" y1="58.42" x2="124.46" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$71" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RD11"/>
<pinref part="X3" gate="-21" pin="S"/>
<wire x1="124.46" y1="60.96" x2="129.54" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$72" class="0">
<segment>
<pinref part="X3" gate="-22" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RD0"/>
<wire x1="129.54" y1="63.5" x2="124.46" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$73" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RC13"/>
<pinref part="X3" gate="-23" pin="S"/>
<wire x1="124.46" y1="66.04" x2="129.54" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$74" class="0">
<segment>
<pinref part="X3" gate="-24" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RC14"/>
<wire x1="129.54" y1="68.58" x2="124.46" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$75" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VSS1"/>
<pinref part="X3" gate="-25" pin="S"/>
<wire x1="124.46" y1="71.12" x2="129.54" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$76" class="0">
<segment>
<pinref part="X4" gate="-1" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RD1"/>
<wire x1="101.6" y1="99.06" x2="101.6" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$77" class="0">
<segment>
<pinref part="X4" gate="-2" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RD2"/>
<wire x1="99.06" y1="99.06" x2="99.06" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$78" class="0">
<segment>
<pinref part="X4" gate="-3" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RD3"/>
<wire x1="96.52" y1="99.06" x2="96.52" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$79" class="0">
<segment>
<pinref part="X4" gate="-4" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RD12"/>
<wire x1="93.98" y1="99.06" x2="93.98" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$80" class="0">
<segment>
<pinref part="X4" gate="-5" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RD13"/>
<wire x1="91.44" y1="99.06" x2="91.44" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$81" class="0">
<segment>
<pinref part="X4" gate="-6" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RD4"/>
<wire x1="88.9" y1="99.06" x2="88.9" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$82" class="0">
<segment>
<pinref part="X4" gate="-7" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RD5"/>
<wire x1="86.36" y1="99.06" x2="86.36" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$83" class="0">
<segment>
<pinref part="X4" gate="-8" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RD6"/>
<wire x1="83.82" y1="99.06" x2="83.82" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$84" class="0">
<segment>
<pinref part="X4" gate="-9" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RD7"/>
<wire x1="81.28" y1="99.06" x2="81.28" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$85" class="0">
<segment>
<pinref part="X4" gate="-10" pin="S"/>
<pinref part="IC1" gate="G$1" pin="VDDCORE"/>
<wire x1="78.74" y1="99.06" x2="78.74" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$86" class="0">
<segment>
<pinref part="X4" gate="-11" pin="S"/>
<pinref part="IC1" gate="G$1" pin="VREG"/>
<wire x1="76.2" y1="99.06" x2="76.2" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$87" class="0">
<segment>
<pinref part="X4" gate="-12" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RF0"/>
<wire x1="73.66" y1="99.06" x2="73.66" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$88" class="0">
<segment>
<pinref part="X4" gate="-13" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RF1"/>
<wire x1="71.12" y1="99.06" x2="71.12" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$89" class="0">
<segment>
<pinref part="X4" gate="-14" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RG1"/>
<wire x1="68.58" y1="99.06" x2="68.58" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$90" class="0">
<segment>
<pinref part="X4" gate="-15" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RG0"/>
<wire x1="66.04" y1="99.06" x2="66.04" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$91" class="0">
<segment>
<pinref part="X4" gate="-16" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RA6"/>
<wire x1="63.5" y1="99.06" x2="63.5" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$92" class="0">
<segment>
<pinref part="X4" gate="-17" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RA7"/>
<wire x1="60.96" y1="99.06" x2="60.96" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$93" class="0">
<segment>
<pinref part="X4" gate="-18" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RE0"/>
<wire x1="58.42" y1="99.06" x2="58.42" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$94" class="0">
<segment>
<pinref part="X4" gate="-19" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RE1"/>
<wire x1="55.88" y1="99.06" x2="55.88" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$95" class="0">
<segment>
<pinref part="X4" gate="-20" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RG14"/>
<wire x1="53.34" y1="99.06" x2="53.34" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$96" class="0">
<segment>
<pinref part="X4" gate="-21" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RG12"/>
<wire x1="50.8" y1="99.06" x2="50.8" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$97" class="0">
<segment>
<pinref part="X4" gate="-22" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RG13"/>
<wire x1="48.26" y1="99.06" x2="48.26" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$98" class="0">
<segment>
<pinref part="X4" gate="-23" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RE2"/>
<wire x1="45.72" y1="99.06" x2="45.72" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$99" class="0">
<segment>
<pinref part="X4" gate="-24" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RE3"/>
<wire x1="43.18" y1="99.06" x2="43.18" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$100" class="0">
<segment>
<pinref part="X4" gate="-25" pin="S"/>
<pinref part="IC1" gate="G$1" pin="RE4"/>
<wire x1="40.64" y1="99.06" x2="40.64" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
