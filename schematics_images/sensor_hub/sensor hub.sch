<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="9" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
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
<library name="con-amp">
<description>&lt;b&gt;AMP Connectors&lt;/b&gt;&lt;p&gt;
RJ45 Jack connectors&lt;br&gt;
 Based on the previous libraris:
 &lt;ul&gt;
 &lt;li&gt;amp.lbr
 &lt;li&gt;amp-j.lbr
 &lt;li&gt;amp-mta.lbr
 &lt;li&gt;amp-nlok.lbr
 &lt;li&gt;amp-sim.lbr
 &lt;li&gt;amp-micro-match.lbr
 &lt;/ul&gt;
 Sources :
 &lt;ul&gt;
 &lt;li&gt;Catalog 82066 Revised 11-95 
 &lt;li&gt;Product Guide 296785 Rev. 8-99
 &lt;li&gt;Product Guide CD-ROM 1999
 &lt;li&gt;www.amp.com
 &lt;/ul&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X3MTA">
<description>&lt;b&gt;AMP MTA connector&lt;/b&gt;</description>
<wire x1="6.3246" y1="6.35" x2="6.3246" y2="3.81" width="0.4064" layer="21"/>
<wire x1="6.3246" y1="3.81" x2="6.3246" y2="-3.81" width="0.4064" layer="21"/>
<wire x1="-6.3754" y1="-3.81" x2="-6.3754" y2="3.81" width="0.4064" layer="21"/>
<wire x1="-6.3754" y1="3.81" x2="-6.3754" y2="6.35" width="0.4064" layer="21"/>
<wire x1="-6.3754" y1="6.35" x2="6.3246" y2="6.35" width="0.4064" layer="21"/>
<wire x1="-6.3754" y1="3.81" x2="6.3246" y2="3.81" width="0.3048" layer="21"/>
<wire x1="-6.3754" y1="-3.81" x2="6.3246" y2="-3.81" width="0.4064" layer="21"/>
<pad name="3" x="-3.9878" y="0" drill="1.6764" shape="long" rot="R90"/>
<pad name="2" x="-0.0254" y="0" drill="1.6764" shape="long" rot="R90"/>
<pad name="1" x="3.937" y="0" drill="1.6764" shape="long" rot="R90"/>
<text x="-3.9116" y="-7.0612" size="1.778" layer="25">&gt;NAME</text>
<text x="-5.5182" y="4.4148" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="3.429" y1="-0.508" x2="4.445" y2="0.508" layer="21"/>
<rectangle x1="-0.5334" y1="-0.508" x2="0.4826" y2="0.508" layer="21"/>
<rectangle x1="-4.4958" y1="-0.508" x2="-3.4798" y2="0.508" layer="21"/>
</package>
<package name="1X2MTA">
<description>&lt;b&gt;AMP MTA connector&lt;/b&gt;</description>
<wire x1="4.572" y1="6.35" x2="4.572" y2="3.81" width="0.4064" layer="21"/>
<wire x1="4.572" y1="3.81" x2="4.572" y2="-3.81" width="0.4064" layer="21"/>
<wire x1="-4.318" y1="-3.81" x2="4.572" y2="-3.81" width="0.4064" layer="21"/>
<wire x1="-4.318" y1="6.35" x2="4.572" y2="6.35" width="0.4064" layer="21"/>
<wire x1="-4.318" y1="3.81" x2="4.572" y2="3.81" width="0.3048" layer="21"/>
<wire x1="-4.318" y1="3.81" x2="-4.318" y2="-3.81" width="0.4064" layer="21"/>
<wire x1="-4.318" y1="6.35" x2="-4.318" y2="3.81" width="0.4064" layer="21"/>
<pad name="1" x="1.9812" y="0" drill="1.6764" shape="long" rot="R90"/>
<pad name="2" x="-1.9812" y="0" drill="1.6764" shape="long" rot="R90"/>
<text x="-4.3688" y="-6.35" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.4369" y="4.4148" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="1.4732" y1="-0.508" x2="2.4892" y2="0.508" layer="21"/>
<rectangle x1="-2.4892" y1="-0.508" x2="-1.4732" y2="0.508" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MTA-03">
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="6.35" y1="-1.905" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="6.35" y2="1.27" width="0.254" layer="94"/>
<wire x1="6.35" y1="1.27" x2="6.35" y2="-1.905" width="0.254" layer="94"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="2.54" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="5.08" y="0" radius="0.635" width="0.254" layer="94"/>
<text x="7.62" y="0" size="1.778" layer="95">&gt;NAME</text>
<text x="7.62" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="-1.27" size="1.27" layer="95">1</text>
<pin name="1" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="2" x="2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="3" x="5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="MTA-02">
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="3.81" y2="1.27" width="0.254" layer="94"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="94"/>
<circle x="2.54" y="0" radius="0.635" width="0.254" layer="94"/>
<text x="5.08" y="0" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="-1.27" size="1.27" layer="95">1</text>
<pin name="1" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="2" x="2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MTA03-156" prefix="J" uservalue="yes">
<description>&lt;b&gt;AMP connector&lt;/b&gt;</description>
<gates>
<gate name="G$2" symbol="MTA-03" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X3MTA">
<connects>
<connect gate="G$2" pin="1" pad="1"/>
<connect gate="G$2" pin="2" pad="2"/>
<connect gate="G$2" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MTA02-156" prefix="J" uservalue="yes">
<description>&lt;b&gt;AMP connector&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MTA-02" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X2MTA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="5566-20">
<description>&lt;b&gt;Mini FIT connector 20 pol&lt;/b&gt;&lt;p&gt;
ATX PC-Motherboard Power connector&lt;br&gt;
Source: http://www.molex.com</description>
<wire x1="-21.5" y1="4.5" x2="21.5" y2="4.5" width="0.254" layer="21"/>
<wire x1="21.5" y1="4.5" x2="21.5" y2="-2.2" width="0.254" layer="21"/>
<wire x1="21.5" y1="-3.3" x2="21.5" y2="-4.9" width="0.254" layer="21"/>
<wire x1="21.5" y1="-4.9" x2="-21.5" y2="-4.9" width="0.254" layer="21"/>
<wire x1="-21.5" y1="-4.9" x2="-21.5" y2="4.5" width="0.254" layer="21"/>
<wire x1="-25" y1="3.2" x2="-22.2" y2="3.2" width="0.254" layer="21" curve="-114.529547"/>
<wire x1="-25" y1="1.4" x2="-22.2" y2="1.4" width="0.254" layer="21" curve="114.529547"/>
<wire x1="-25" y1="3.2" x2="-25" y2="1.4" width="0.254" layer="21"/>
<wire x1="-22.3" y1="3.3" x2="-21.6" y2="3.3" width="0.254" layer="21"/>
<wire x1="-22.3" y1="1.3" x2="-21.6" y2="1.3" width="0.254" layer="21"/>
<wire x1="22.2" y1="1.4" x2="25" y2="1.4" width="0.254" layer="21" curve="114.529547"/>
<wire x1="22.2" y1="3.2" x2="25" y2="3.2" width="0.254" layer="21" curve="-114.529547"/>
<wire x1="25" y1="1.4" x2="25" y2="3.2" width="0.254" layer="21"/>
<wire x1="22.3" y1="1.3" x2="21.6" y2="1.3" width="0.254" layer="21"/>
<wire x1="22.3" y1="3.3" x2="21.6" y2="3.3" width="0.254" layer="21"/>
<wire x1="21.5" y1="-2.2" x2="21.5" y2="-3.3" width="0.254" layer="21" curve="-180"/>
<wire x1="-2.1" y1="6.3" x2="2.1" y2="6.3" width="0.254" layer="27"/>
<wire x1="-2.1" y1="6.3" x2="-2.1" y2="4.6" width="0.254" layer="27"/>
<wire x1="2.1" y1="6.3" x2="2.1" y2="4.6" width="0.254" layer="27"/>
<pad name="1" x="18.9" y="-2.75" drill="1.4" shape="square"/>
<pad name="2" x="14.7" y="-2.75" drill="1.4" shape="square"/>
<pad name="3" x="10.5" y="-2.75" drill="1.4" shape="square"/>
<pad name="4" x="6.3" y="-2.75" drill="1.4" shape="square"/>
<pad name="5" x="2.1" y="-2.75" drill="1.4" shape="square"/>
<pad name="6" x="-2.1" y="-2.75" drill="1.4" shape="square"/>
<pad name="7" x="-6.3" y="-2.75" drill="1.4" shape="square"/>
<pad name="8" x="-10.5" y="-2.75" drill="1.4" shape="square"/>
<pad name="9" x="-14.7" y="-2.75" drill="1.4" shape="square"/>
<pad name="10" x="-18.9" y="-2.75" drill="1.4" shape="square"/>
<pad name="11" x="18.9" y="2.75" drill="1.4" shape="square"/>
<pad name="12" x="14.7" y="2.75" drill="1.4" shape="square"/>
<pad name="13" x="10.5" y="2.75" drill="1.4" shape="square"/>
<pad name="14" x="6.3" y="2.75" drill="1.4" shape="square"/>
<pad name="15" x="2.1" y="2.75" drill="1.4" shape="square"/>
<pad name="16" x="-2.1" y="2.75" drill="1.4" shape="square"/>
<pad name="17" x="-6.3" y="2.75" drill="1.4" shape="square"/>
<pad name="18" x="-10.5" y="2.75" drill="1.4" shape="square"/>
<pad name="19" x="-14.7" y="2.75" drill="1.4" shape="square"/>
<pad name="20" x="-18.9" y="2.75" drill="1.4" shape="square"/>
<text x="16.51" y="-6.985" size="1.27" layer="25">&gt;NAME</text>
<text x="-20.32" y="-6.985" size="1.27" layer="27">&gt;VALUE</text>
<hole x="23.6" y="2.29" drill="3"/>
<hole x="-23.6" y="2.29" drill="3"/>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="5566-20" prefix="X">
<description>&lt;b&gt;Mini FIT connector 20 pol&lt;/b&gt;&lt;p&gt;
ATX PC-Motherboard Power connector&lt;br&gt;
Source: http://www.molex.com</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="22.86" addlevel="always"/>
<gate name="-2" symbol="M" x="0" y="20.32" addlevel="always"/>
<gate name="-3" symbol="M" x="0" y="17.78" addlevel="always"/>
<gate name="-4" symbol="M" x="0" y="15.24" addlevel="always"/>
<gate name="-5" symbol="M" x="0" y="12.7" addlevel="always"/>
<gate name="-6" symbol="M" x="0" y="10.16" addlevel="always"/>
<gate name="-7" symbol="M" x="0" y="7.62" addlevel="always"/>
<gate name="-8" symbol="M" x="0" y="5.08" addlevel="always"/>
<gate name="-9" symbol="M" x="0" y="2.54" addlevel="always"/>
<gate name="-10" symbol="M" x="0" y="0" addlevel="always"/>
<gate name="-11" symbol="M" x="0" y="-2.54" addlevel="always"/>
<gate name="-12" symbol="M" x="0" y="-5.08" addlevel="always"/>
<gate name="-13" symbol="M" x="0" y="-7.62" addlevel="always"/>
<gate name="-14" symbol="M" x="0" y="-10.16" addlevel="always"/>
<gate name="-15" symbol="M" x="0" y="-12.7" addlevel="always"/>
<gate name="-16" symbol="M" x="0" y="-15.24" addlevel="always"/>
<gate name="-17" symbol="M" x="0" y="-17.78" addlevel="always"/>
<gate name="-18" symbol="M" x="0" y="-20.32" addlevel="always"/>
<gate name="-19" symbol="M" x="0" y="-22.86" addlevel="always"/>
<gate name="-20" symbol="M" x="0" y="-25.4" addlevel="always"/>
</gates>
<devices>
<device name="" package="5566-20">
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
<part name="J1" library="con-amp" deviceset="MTA03-156" device=""/>
<part name="J2" library="con-amp" deviceset="MTA03-156" device=""/>
<part name="J3" library="con-amp" deviceset="MTA03-156" device=""/>
<part name="J4" library="con-amp" deviceset="MTA03-156" device=""/>
<part name="J5" library="con-amp" deviceset="MTA03-156" device=""/>
<part name="J6" library="con-amp" deviceset="MTA03-156" device=""/>
<part name="J7" library="con-amp" deviceset="MTA03-156" device=""/>
<part name="J8" library="con-amp" deviceset="MTA02-156" device=""/>
<part name="J9" library="con-amp" deviceset="MTA02-156" device=""/>
<part name="J10" library="con-amp" deviceset="MTA02-156" device=""/>
<part name="J11" library="con-amp" deviceset="MTA02-156" device=""/>
<part name="J12" library="con-amp" deviceset="MTA02-156" device=""/>
<part name="X2" library="con-molex" deviceset="5566-20" device=""/>
<part name="J13" library="con-amp" deviceset="MTA03-156" device=""/>
<part name="J14" library="con-amp" deviceset="MTA03-156" device=""/>
<part name="J15" library="con-amp" deviceset="MTA03-156" device=""/>
<part name="J16" library="con-amp" deviceset="MTA03-156" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="J1" gate="G$2" x="-12.7" y="71.12"/>
<instance part="J2" gate="G$2" x="2.54" y="71.12"/>
<instance part="J3" gate="G$2" x="17.78" y="71.12"/>
<instance part="J4" gate="G$2" x="33.02" y="71.12"/>
<instance part="J5" gate="G$2" x="48.26" y="71.12"/>
<instance part="J6" gate="G$2" x="63.5" y="71.12"/>
<instance part="J7" gate="G$2" x="78.74" y="71.12"/>
<instance part="J8" gate="G$1" x="0" y="35.56"/>
<instance part="J9" gate="G$1" x="15.24" y="35.56"/>
<instance part="J10" gate="G$1" x="30.48" y="35.56"/>
<instance part="J11" gate="G$1" x="45.72" y="35.56"/>
<instance part="J12" gate="G$1" x="60.96" y="35.56"/>
<instance part="X2" gate="-1" x="129.54" y="91.44"/>
<instance part="X2" gate="-2" x="129.54" y="88.9"/>
<instance part="X2" gate="-3" x="129.54" y="86.36"/>
<instance part="X2" gate="-4" x="129.54" y="83.82"/>
<instance part="X2" gate="-5" x="129.54" y="81.28"/>
<instance part="X2" gate="-6" x="129.54" y="78.74"/>
<instance part="X2" gate="-7" x="129.54" y="76.2"/>
<instance part="X2" gate="-8" x="129.54" y="73.66"/>
<instance part="X2" gate="-9" x="129.54" y="71.12"/>
<instance part="X2" gate="-10" x="129.54" y="68.58"/>
<instance part="X2" gate="-11" x="129.54" y="66.04"/>
<instance part="X2" gate="-12" x="129.54" y="63.5"/>
<instance part="X2" gate="-13" x="129.54" y="60.96"/>
<instance part="X2" gate="-14" x="129.54" y="58.42"/>
<instance part="X2" gate="-15" x="129.54" y="55.88"/>
<instance part="X2" gate="-16" x="129.54" y="53.34"/>
<instance part="X2" gate="-17" x="129.54" y="50.8"/>
<instance part="X2" gate="-18" x="129.54" y="48.26"/>
<instance part="X2" gate="-19" x="129.54" y="45.72"/>
<instance part="X2" gate="-20" x="129.54" y="43.18"/>
<instance part="J13" gate="G$2" x="88.9" y="12.7"/>
<instance part="J14" gate="G$2" x="99.06" y="12.7"/>
<instance part="J15" gate="G$2" x="109.22" y="12.7"/>
<instance part="J16" gate="G$2" x="119.38" y="12.7"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$19" class="0">
<segment>
<wire x1="-10.16" y1="68.58" x2="-10.16" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="91.44" x2="127" y2="91.44" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$2" pin="2"/>
<pinref part="X2" gate="-1" pin="S"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<wire x1="5.08" y1="68.58" x2="5.08" y2="88.9" width="0.1524" layer="91"/>
<wire x1="5.08" y1="88.9" x2="127" y2="88.9" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$2" pin="2"/>
<pinref part="X2" gate="-2" pin="S"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<wire x1="20.32" y1="68.58" x2="20.32" y2="86.36" width="0.1524" layer="91"/>
<wire x1="20.32" y1="86.36" x2="127" y2="86.36" width="0.1524" layer="91"/>
<pinref part="J3" gate="G$2" pin="2"/>
<pinref part="X2" gate="-3" pin="S"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<wire x1="35.56" y1="68.58" x2="35.56" y2="83.82" width="0.1524" layer="91"/>
<wire x1="35.56" y1="83.82" x2="127" y2="83.82" width="0.1524" layer="91"/>
<pinref part="J4" gate="G$2" pin="2"/>
<pinref part="X2" gate="-4" pin="S"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<wire x1="81.28" y1="76.2" x2="127" y2="76.2" width="0.1524" layer="91"/>
<pinref part="J7" gate="G$2" pin="2"/>
<wire x1="81.28" y1="68.58" x2="81.28" y2="76.2" width="0.1524" layer="91"/>
<pinref part="X2" gate="-7" pin="S"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<wire x1="0" y1="33.02" x2="0" y2="53.34" width="0.1524" layer="91"/>
<wire x1="0" y1="53.34" x2="88.9" y2="53.34" width="0.1524" layer="91"/>
<wire x1="88.9" y1="53.34" x2="88.9" y2="73.66" width="0.1524" layer="91"/>
<wire x1="88.9" y1="73.66" x2="127" y2="73.66" width="0.1524" layer="91"/>
<pinref part="J8" gate="G$1" pin="1"/>
<pinref part="X2" gate="-8" pin="S"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<wire x1="15.24" y1="33.02" x2="15.24" y2="50.8" width="0.1524" layer="91"/>
<wire x1="15.24" y1="50.8" x2="91.44" y2="50.8" width="0.1524" layer="91"/>
<wire x1="91.44" y1="50.8" x2="91.44" y2="71.12" width="0.1524" layer="91"/>
<wire x1="91.44" y1="71.12" x2="127" y2="71.12" width="0.1524" layer="91"/>
<pinref part="J9" gate="G$1" pin="1"/>
<pinref part="X2" gate="-9" pin="S"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<wire x1="30.48" y1="33.02" x2="30.48" y2="48.26" width="0.1524" layer="91"/>
<wire x1="30.48" y1="48.26" x2="93.98" y2="48.26" width="0.1524" layer="91"/>
<wire x1="93.98" y1="48.26" x2="93.98" y2="68.58" width="0.1524" layer="91"/>
<wire x1="93.98" y1="68.58" x2="127" y2="68.58" width="0.1524" layer="91"/>
<pinref part="J10" gate="G$1" pin="1"/>
<pinref part="X2" gate="-10" pin="S"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<wire x1="2.54" y1="33.02" x2="2.54" y2="27.94" width="0.1524" layer="91"/>
<wire x1="2.54" y1="27.94" x2="17.78" y2="27.94" width="0.1524" layer="91"/>
<wire x1="17.78" y1="33.02" x2="17.78" y2="27.94" width="0.1524" layer="91"/>
<wire x1="17.78" y1="27.94" x2="33.02" y2="27.94" width="0.1524" layer="91"/>
<wire x1="33.02" y1="33.02" x2="33.02" y2="27.94" width="0.1524" layer="91"/>
<wire x1="33.02" y1="27.94" x2="48.26" y2="27.94" width="0.1524" layer="91"/>
<wire x1="48.26" y1="33.02" x2="48.26" y2="27.94" width="0.1524" layer="91"/>
<wire x1="48.26" y1="27.94" x2="63.5" y2="27.94" width="0.1524" layer="91"/>
<wire x1="63.5" y1="33.02" x2="63.5" y2="27.94" width="0.1524" layer="91"/>
<wire x1="63.5" y1="27.94" x2="63.5" y2="2.54" width="0.1524" layer="91"/>
<wire x1="2.54" y1="27.94" x2="-7.62" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="27.94" x2="-7.62" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="68.58" x2="-7.62" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="63.5" x2="7.62" y2="63.5" width="0.1524" layer="91"/>
<wire x1="7.62" y1="68.58" x2="7.62" y2="63.5" width="0.1524" layer="91"/>
<wire x1="7.62" y1="63.5" x2="22.86" y2="63.5" width="0.1524" layer="91"/>
<wire x1="22.86" y1="68.58" x2="22.86" y2="63.5" width="0.1524" layer="91"/>
<wire x1="22.86" y1="63.5" x2="38.1" y2="63.5" width="0.1524" layer="91"/>
<wire x1="38.1" y1="68.58" x2="38.1" y2="63.5" width="0.1524" layer="91"/>
<wire x1="38.1" y1="63.5" x2="53.34" y2="63.5" width="0.1524" layer="91"/>
<wire x1="53.34" y1="68.58" x2="53.34" y2="63.5" width="0.1524" layer="91"/>
<wire x1="53.34" y1="63.5" x2="68.58" y2="63.5" width="0.1524" layer="91"/>
<wire x1="68.58" y1="68.58" x2="68.58" y2="63.5" width="0.1524" layer="91"/>
<wire x1="68.58" y1="63.5" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
<wire x1="83.82" y1="63.5" x2="83.82" y2="68.58" width="0.1524" layer="91"/>
<junction x="68.58" y="63.5"/>
<junction x="53.34" y="63.5"/>
<junction x="38.1" y="63.5"/>
<junction x="22.86" y="63.5"/>
<junction x="7.62" y="63.5"/>
<junction x="-7.62" y="63.5"/>
<junction x="2.54" y="27.94"/>
<junction x="17.78" y="27.94"/>
<junction x="33.02" y="27.94"/>
<junction x="48.26" y="27.94"/>
<junction x="63.5" y="27.94"/>
<pinref part="J1" gate="G$2" pin="3"/>
<pinref part="J2" gate="G$2" pin="3"/>
<pinref part="J3" gate="G$2" pin="3"/>
<pinref part="J4" gate="G$2" pin="3"/>
<pinref part="J5" gate="G$2" pin="3"/>
<pinref part="J6" gate="G$2" pin="3"/>
<pinref part="J7" gate="G$2" pin="3"/>
<pinref part="J8" gate="G$1" pin="2"/>
<pinref part="J9" gate="G$1" pin="2"/>
<pinref part="J10" gate="G$1" pin="2"/>
<pinref part="J11" gate="G$1" pin="2"/>
<pinref part="J12" gate="G$1" pin="2"/>
<wire x1="63.5" y1="2.54" x2="154.94" y2="2.54" width="0.1524" layer="91"/>
<wire x1="154.94" y1="2.54" x2="154.94" y2="48.26" width="0.1524" layer="91"/>
<pinref part="X2" gate="-18" pin="S"/>
<wire x1="154.94" y1="48.26" x2="127" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<wire x1="78.74" y1="68.58" x2="78.74" y2="60.96" width="0.1524" layer="91"/>
<wire x1="78.74" y1="60.96" x2="63.5" y2="60.96" width="0.1524" layer="91"/>
<wire x1="63.5" y1="68.58" x2="63.5" y2="60.96" width="0.1524" layer="91"/>
<wire x1="63.5" y1="60.96" x2="48.26" y2="60.96" width="0.1524" layer="91"/>
<wire x1="48.26" y1="68.58" x2="48.26" y2="60.96" width="0.1524" layer="91"/>
<wire x1="48.26" y1="60.96" x2="33.02" y2="60.96" width="0.1524" layer="91"/>
<wire x1="33.02" y1="68.58" x2="33.02" y2="60.96" width="0.1524" layer="91"/>
<wire x1="33.02" y1="60.96" x2="17.78" y2="60.96" width="0.1524" layer="91"/>
<wire x1="17.78" y1="68.58" x2="17.78" y2="60.96" width="0.1524" layer="91"/>
<wire x1="17.78" y1="60.96" x2="2.54" y2="60.96" width="0.1524" layer="91"/>
<wire x1="2.54" y1="68.58" x2="2.54" y2="60.96" width="0.1524" layer="91"/>
<wire x1="2.54" y1="60.96" x2="-12.7" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="60.96" x2="-12.7" y2="68.58" width="0.1524" layer="91"/>
<junction x="2.54" y="60.96"/>
<junction x="17.78" y="60.96"/>
<junction x="33.02" y="60.96"/>
<junction x="48.26" y="60.96"/>
<junction x="63.5" y="60.96"/>
<wire x1="-12.7" y1="60.96" x2="-12.7" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="-2.54" x2="160.02" y2="-2.54" width="0.1524" layer="91"/>
<junction x="-12.7" y="60.96"/>
<pinref part="J1" gate="G$2" pin="1"/>
<pinref part="J2" gate="G$2" pin="1"/>
<pinref part="J3" gate="G$2" pin="1"/>
<pinref part="J4" gate="G$2" pin="1"/>
<pinref part="J5" gate="G$2" pin="1"/>
<pinref part="J6" gate="G$2" pin="1"/>
<pinref part="J7" gate="G$2" pin="1"/>
<wire x1="160.02" y1="-2.54" x2="160.02" y2="50.8" width="0.1524" layer="91"/>
<pinref part="X2" gate="-17" pin="S"/>
<wire x1="160.02" y1="50.8" x2="127" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="50.8" y1="68.58" x2="50.8" y2="81.28" width="0.1524" layer="91"/>
<wire x1="50.8" y1="81.28" x2="127" y2="81.28" width="0.1524" layer="91"/>
<pinref part="J5" gate="G$2" pin="2"/>
<pinref part="X2" gate="-5" pin="S"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="66.04" y1="78.74" x2="127" y2="78.74" width="0.1524" layer="91"/>
<pinref part="J6" gate="G$2" pin="2"/>
<wire x1="66.04" y1="68.58" x2="66.04" y2="78.74" width="0.1524" layer="91"/>
<pinref part="X2" gate="-6" pin="S"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="45.72" y1="33.02" x2="45.72" y2="45.72" width="0.1524" layer="91"/>
<wire x1="45.72" y1="45.72" x2="96.52" y2="45.72" width="0.1524" layer="91"/>
<wire x1="96.52" y1="45.72" x2="96.52" y2="66.04" width="0.1524" layer="91"/>
<wire x1="96.52" y1="66.04" x2="127" y2="66.04" width="0.1524" layer="91"/>
<pinref part="J11" gate="G$1" pin="1"/>
<pinref part="X2" gate="-11" pin="S"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="60.96" y1="43.18" x2="99.06" y2="43.18" width="0.1524" layer="91"/>
<wire x1="99.06" y1="43.18" x2="99.06" y2="63.5" width="0.1524" layer="91"/>
<wire x1="99.06" y1="63.5" x2="127" y2="63.5" width="0.1524" layer="91"/>
<pinref part="J12" gate="G$1" pin="1"/>
<wire x1="60.96" y1="33.02" x2="60.96" y2="43.18" width="0.1524" layer="91"/>
<pinref part="X2" gate="-12" pin="S"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="J13" gate="G$2" pin="2"/>
<wire x1="91.44" y1="10.16" x2="91.44" y2="40.64" width="0.1524" layer="91"/>
<wire x1="91.44" y1="40.64" x2="101.6" y2="40.64" width="0.1524" layer="91"/>
<wire x1="101.6" y1="40.64" x2="101.6" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X2" gate="-13" pin="S"/>
<wire x1="101.6" y1="60.96" x2="127" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="J14" gate="G$2" pin="2"/>
<wire x1="101.6" y1="10.16" x2="101.6" y2="38.1" width="0.1524" layer="91"/>
<wire x1="101.6" y1="38.1" x2="104.14" y2="38.1" width="0.1524" layer="91"/>
<wire x1="104.14" y1="38.1" x2="104.14" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X2" gate="-14" pin="S"/>
<wire x1="104.14" y1="58.42" x2="127" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="J15" gate="G$2" pin="2"/>
<wire x1="111.76" y1="10.16" x2="111.76" y2="55.88" width="0.1524" layer="91"/>
<pinref part="X2" gate="-15" pin="S"/>
<wire x1="111.76" y1="55.88" x2="127" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="J16" gate="G$2" pin="2"/>
<wire x1="121.92" y1="10.16" x2="121.92" y2="17.78" width="0.1524" layer="91"/>
<wire x1="121.92" y1="17.78" x2="114.3" y2="17.78" width="0.1524" layer="91"/>
<wire x1="114.3" y1="17.78" x2="114.3" y2="53.34" width="0.1524" layer="91"/>
<wire x1="114.3" y1="53.34" x2="129.54" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="88.9" y1="12.7" x2="88.9" y2="5.08" width="0.1524" layer="91"/>
<wire x1="88.9" y1="5.08" x2="99.06" y2="5.08" width="0.1524" layer="91"/>
<wire x1="119.38" y1="5.08" x2="139.7" y2="5.08" width="0.1524" layer="91"/>
<wire x1="139.7" y1="5.08" x2="139.7" y2="45.72" width="0.1524" layer="91"/>
<pinref part="X2" gate="-19" pin="S"/>
<wire x1="139.7" y1="45.72" x2="127" y2="45.72" width="0.1524" layer="91"/>
<pinref part="J14" gate="G$2" pin="1"/>
<wire x1="99.06" y1="10.16" x2="99.06" y2="5.08" width="0.1524" layer="91"/>
<pinref part="J15" gate="G$2" pin="1"/>
<wire x1="99.06" y1="5.08" x2="109.22" y2="5.08" width="0.1524" layer="91"/>
<wire x1="109.22" y1="10.16" x2="109.22" y2="5.08" width="0.1524" layer="91"/>
<pinref part="J16" gate="G$2" pin="1"/>
<wire x1="109.22" y1="5.08" x2="119.38" y2="5.08" width="0.1524" layer="91"/>
<wire x1="119.38" y1="5.08" x2="119.38" y2="10.16" width="0.1524" layer="91"/>
<junction x="99.06" y="5.08"/>
<junction x="109.22" y="5.08"/>
<junction x="119.38" y="5.08"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="J13" gate="G$2" pin="3"/>
<wire x1="93.98" y1="10.16" x2="93.98" y2="22.86" width="0.1524" layer="91"/>
<pinref part="X2" gate="-20" pin="S"/>
<wire x1="93.98" y1="22.86" x2="104.14" y2="22.86" width="0.1524" layer="91"/>
<wire x1="124.46" y1="22.86" x2="127" y2="22.86" width="0.1524" layer="91"/>
<wire x1="127" y1="22.86" x2="127" y2="43.18" width="0.1524" layer="91"/>
<pinref part="J14" gate="G$2" pin="3"/>
<wire x1="104.14" y1="10.16" x2="104.14" y2="22.86" width="0.1524" layer="91"/>
<pinref part="J16" gate="G$2" pin="3"/>
<wire x1="104.14" y1="22.86" x2="124.46" y2="22.86" width="0.1524" layer="91"/>
<wire x1="124.46" y1="22.86" x2="124.46" y2="10.16" width="0.1524" layer="91"/>
<wire x1="124.46" y1="10.16" x2="124.46" y2="7.62" width="0.1524" layer="91"/>
<wire x1="124.46" y1="7.62" x2="114.3" y2="7.62" width="0.1524" layer="91"/>
<wire x1="114.3" y1="7.62" x2="114.3" y2="12.7" width="0.1524" layer="91"/>
<junction x="104.14" y="22.86"/>
<junction x="124.46" y="22.86"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>