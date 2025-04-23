<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">

        <html>
            <head>
                <meta http-equiv="Pragma" content="no-cache"/>
                <meta http-equiv="Refresh" content="300"/>
                <title>USAXS: status</title>
                <style type="text/css">
                    body {
                        font: x-small Verdana, Arial, Helvetica, sans-serif;
                    }
                    h1 {
                       font-size: 145%;
                       margin-bottom: .5em;
                    }
                    h2 {
                       font-size: 125%;
                       margin-top: 1.5em;
                       margin-bottom: .5em;
                    }
                    h3 {
                        font-size: 115%;
                        margin-top: 1.2em;
                        margin-bottom: .5em
                    }
                    h4 {
                        font-size: 100%;
                       margin-top: 1.2em;
                       margin-bottom: .5em;
                    }
                    p {
                      font: x-small Verdana, Arial, Helvetica, sans-serif;
                      color: #000000;
                    }
                    .description {
                        font-weight: bold;
                        font-size: 150%;
                    }
                    td {
                        font-size: x-small;
                    }

                    li {
                        margin-top: .75em;
                        margin-bottom: .75em;
                    }
                    ul {
                        list-style: disc;
                    }

                    ul ul, ol ol , ol ul, ul ol {
                      margin-top: 1em;
                      margin-bottom: 1em;
                    }
                    li p {
                      margin-top: .5em;
                      margin-bottom: .5em;
                    }

                    .dt {
                        margin-bottom: -1em;
                    }
                    .indent {
                        margin-left: 1.5em;
                    }
                    sup {
                       text-decoration: none;
                       font-size: smaller;
                    }

                </style>
            </head>
            <body>
             <table border="0" width="96%" rules="none" bgcolor="darkblue">

                    <tr>
			<td align="center" class="description">
 			    <font color="white">USAXS status</font>
			</td>
		    </tr>
                    <tr>
		        <td align="center">
			    <font color="white">HTML page refresh interval 0:05:00 (h:mm:ss)</font>
			</td>
		    </tr>
                <tr bgcolor="lightblue">
		                <td>
                            <table border="1" width="100%" rules="all" bgcolor="lightblue">
                            <tr>
                                <td>WEBCAMERAS (APS only) : </td>
                    		    <td align="center">
                    		        <a href="http://10.54.122.54/">
                    		            Inboard above D stage
                    		        </a>
                    		    </td>
                                <td align="center">
                                        <a href="http://10.54.122.53/">
                                            Outboard above WAXS
                                        </a>
                    		    </td>
                                <td align="center">
                                        <a href="http://10.54.122.41/">
                                            Side-sample
                                        </a>
                    		    </td>
                                <td align="center">
                                        <a href="http://10.54.122.52/">
                                            Outboard front table up
                                        </a>
                    		    </td>
                    		    <td align="center">
                    		        <a href="http://10.54.122.51/">
                    		            Outboard front table mid 
                    		        </a>
                    		    </td>
                                <td align="center">
                                        <a href="http://10.54.122.47/">
                                            Beamline flags
                                        </a>
                    		    </td>
                                <td align="center">
                                        <a href="http://10.54.122.50/">
                                            Inboard front table
                                        </a>
                    		    </td>
                                </tr>
                            </table>
                     	</td>
                    </tr>
             </table>




                <table border="1" width="96%" rules="all">
                    <tr>
                        <td>
                            <table border="1" width="100%" rules="all" bgcolor="mintcream">
                                <tr>
                                    <td>shutters:</td>
  				    <xsl:choose>
                                        <xsl:when test="//pv[@id='mono_shtr_opened']/value=1">
                                            <td bgcolor="#22ff22">mono: open</td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td bgcolor="#ff2222">mono: closed</td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:choose>
                                        <xsl:when test="//pv[@id='white_shtr_opened']/value=1">
                                            <td bgcolor="#22ff22">white: open</td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td bgcolor="#ff2222">white: closed</td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table border="1" width="100%" bgcolor="mintcream" rules="all">
                                <tr>
                                    <xsl:choose>
                                        <xsl:when test="//pv[@id='SR_current']/value>2">
                                            <td bgcolor="#22ff22">
                                                <a href="https://www3.aps.anl.gov/aod/blops/plots/smallStatusPlot.png">
                                                APS current</a> =
                                                <xsl:value-of select="//pv[@id='SR_current']/value"/> mA</td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td bgcolor="#ff2222">
                                                <a href="https://www3.aps.anl.gov/aod/blops/plots/smallStatusPlot.png">
                                                    APS current</a> =
                                                <xsl:value-of select="//pv[@id='SR_current']/value"/> mA</td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <td>ID E = <xsl:value-of select="//pv[@id='Und_E']/value"/> keV</td>
                                    <td>DCM E = <xsl:value-of select="//pv[@id='DCM_E']/value"/> keV</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table border="1" width="100%" bgcolor="mintcream" rules="all">
                                <tr>
                                    <td>|Q| = <xsl:value-of select="//pv[@id='USAXS_Q']/value"/> 1/A</td>
                                    <td>I = <xsl:value-of select="//pv[@id='USAXS_I']/value"/> pA/uA</td>
                                    <td>SAD = <xsl:value-of select="//pv[@id='SAD']/value"/> mm</td>
                                    <td>SDD = <xsl:value-of select="//pv[@id='SDD']/value"/> mm</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table border="1" width="100%" bgcolor="mintcream" rules="all">
                                <td>
                                    <!-- TODO need to update this for 9-ID mirror system -->
				    <xsl:choose>
                                        <xsl:when test="//pv[@id='mirror_cr_pos']/value=1.0">
                                            <xsl:value-of select="//pv[@id='mirror_cr_pos']/description"/>
                                        </xsl:when>
                                        <xsl:when test="//pv[@id='mirror_si_pos']/value=1.0">
                                            <xsl:value-of select="//pv[@id='mirror_si_pos']/description"/>
                                        </xsl:when>
                                        <xsl:when test="//pv[@id='mirror_rh_pos']/value=1.0">
                                            <xsl:value-of select="//pv[@id='mirror_rh_pos']/description"/>
                                        </xsl:when>
                                        <xsl:when test="//pv[@id='mirror_wh_pos']/value=1.0">
                                            <xsl:value-of select="//pv[@id='mirror_wh_pos']/description"/>
                                        </xsl:when>
                                        <xsl:otherwise>(mirror settings not available)</xsl:otherwise>
                                    </xsl:choose>

                                </td>
                                <td>Filter transmission =
                                    <xsl:value-of select="//pv[@id='pf4_trans']/value"/>
                                    (Order=<xsl:value-of select="//pv[@id='pf4_thickness_Al']/value"/> mm)
                                </td>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="bisque" class="description">
                            <xsl:value-of select="//pv[@id='sampleTitle']/value"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="lightblue">
                            <font size="4">
                                <xsl:value-of select="//pv[@id='state']/value"/>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table border="1" width="100%" bgcolor="mintcream" rules="all">
                                <td align="left">spec macro:
                                    <a href="specmacro.txt">
										specmacro.txt
  										<!--
                                        <xsl:attribute name="href">
                                        	<xsl:value-of select="//pv[@id='spec_macro_file']/value"/>
                                        </xsl:attribute>
                                        <xsl:value-of select="//pv[@id='spec_macro_file']/value"/>
                                        -->
                                    </a>
                                </td>
                                <td align="center">
                                    time stamp:
                                    <xsl:value-of select="//pv[@id='timeStamp']/value"/>
                                </td>
                                <xsl:choose>
                                    <xsl:when test="//pv[@id='USAXS_collecting']/value=1">
                                        <td bgcolor="#22ff22">Collecting data</td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>NOT Collecting data</td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table border="1" width="100%" bgcolor="mintcream" rules="all">
                                <td align="left">
                                    <xsl:value-of select="//pv[@id='spec_dir']/value"
                                    />/<xsl:value-of select="//pv[@id='spec_data_file']/value"
                                    />
                                </td>
                                <td align="center">
                                    scan #<xsl:value-of select="//pv[@id='spec_scan']/value"/>
                                </td>
                                <td align="center">
                                    <xsl:value-of select="//pv[@id='spec_scan']/timestamp"/>
                                </td>
                            </table>
                        </td>
                    </tr>

        	    <tr>   <!-- start Linkam T96 status-->
 			    <td>
 				<table border="1" width="100%" bgcolor="mintcream" rules="all">
 				    <td align="center">Linkam T96 350V/600/1500V </td>
 				    <td align="center">
 					<xsl:choose>
					    <xsl:when test="//pv[@id='linkamT96_status']/value=0"> stopped </xsl:when>
 					    <xsl:when test="//pv[@id='linkamT96_status']/value=1"> heating/cooling/holding </xsl:when>
 					    <xsl:otherwise>
						    unknown status: <xsl:value-of select="//pv[@id='linkamT96_status']/value"/>
					    </xsl:otherwise>
				       </xsl:choose>
 				    </td>
				    <td align="center">
 				       Temperature: <xsl:value-of select="//pv[@id='linkamT96_temp']/value"/> C
 				    </td>
				    <td align="center">
				       Target Temp: <xsl:value-of select="//pv[@id='linkamT96_limit']/value"/>C
				    </td>
 				    <td align="center">
 				       Heating rate: <xsl:value-of select="//pv[@id='linkamT96_rate']/value"/> C/min
 				    </td>

				    <td align="center">
 				       Pressure: <xsl:value-of select="//pv[@id='linkamT96_Pressure']/value"/> mBar
 				    </td> 				     				     

				    <xsl:choose>
                       <xsl:when test="//pv[@id='linkamT96_errors']/value='No Error'">
					    <td align="center" bgcolor="#22ff22">
					    No controller errors </td>
				       </xsl:when>
				       <xsl:otherwise>
					    <td align="center" bgcolor="#ff2222">
					    Controller Error!!!  </td>
				       </xsl:otherwise>
				    </xsl:choose>
 				</table>
 			    </td>
 			</tr>    <!-- end Linkam T96 status-->      
            </table>

                 <!-- Graphs with data in table - note step scan is missing for now -->   
                <table>
                     <tr>
                         <td>
                            <h4>USAXS plot</h4>
                            <a href="showplotusaxs.html"><img SRC="usaxs.jpg" alt="plot of USAXS data" WIDTH="400"/></a>
					     </td>
                         <td>
                            <h4>SAXS plot</h4>
                            <a href="showplotsaxs.html"><img SRC="saxs.jpg" alt="plot of SAXS data" WIDTH="400"/></a>
                         </td>
                         <td>
                            <h4>WAXS plot</h4>
                            <a href="showplotwaxs.html"><img SRC="waxs.jpg" alt="plot of WAXS data" WIDTH="400"/></a>
                         </td>                   
                         <td>
                            <h4>Step scan USAXS plot</h4>
                            <a href="showplotstepusaxs.html"><img SRC="stepusaxs.jpg" alt="plot of USAXS step scan data" WIDTH="400"/></a>
                         </td>                   
                   </tr>
                </table>
                
                <br/>
                <h4>slits</h4>

                <table border="2">
                    <tr style="background-color: grey; color: white;">
                        <td>slits</td>
                        <td>mm</td>
                        <td>mm</td>
                        <td>mm</td>
                        <td>mm</td>
                    </tr>
                    <tr>
                        <td>HHL (r,l,t,b)</td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='hhl_slitr']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='hhl_slitl']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='hhl_slitt']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='hhl_slitb']/value"/></td>
                    </tr>
                    <tr>
                        <td>mirror (r,l,t,b)</td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='mir_slitr']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='mir_slitl']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='mir_slitt']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='mir_slitb']/value"/></td>
                    </tr>
                    <tr>
                        <td>guard (r,l,t,b)</td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='GuardOutB']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='GuardInB']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='GuardTop']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='GuardBot']/value"/></td>
                    </tr>
                    <tr>
                        <td>USAXS (h,v)(gap,center)</td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='uslith']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='uslitv']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='uslith0']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='uslitv0']/value"/></td>

                    </tr>
                </table>

               <h4>detectors</h4>
               <table border="2">
                                <tr style="background-color: grey; color: white;">
                                    <td>detector</td>
                                    <td>counts</td>
                                    <td>VDC</td>
                                    <td>gain,V/A</td>
                                    <td>current,A</td>
                                </tr>

                                <tr>
                                    <td>I0</td>
                                    <td bgcolor="white"><xsl:value-of select="//pv[@id='scaler_I0']/value"/></td>
                                    <td><xsl:value-of select="//pv[@id='I0_VDC']/value"/></td>
                                    <td><xsl:value-of select="//pv[@id='I0_amp_gain']/value"/></td>
                                    <td><xsl:value-of select="//pv[@id='I0_amp_current']/value"/></td>
                                </tr>
                                <tr>
                                    <td>I00</td>
                                    <td bgcolor="white"><xsl:value-of select="//pv[@id='scaler_I00']/value"/></td>
                                    <td><xsl:value-of select="//pv[@id='I00_VDC']/value"/></td>
                                    <td><xsl:value-of select="//pv[@id='I00_amp_gain']/value"/></td>
                                    <td><xsl:value-of select="//pv[@id='I00_amp_current']/value"/></td>
                                </tr>
                                <tr>
                                    <td>I000</td>
                                    <td bgcolor="white"><xsl:value-of select="//pv[@id='scaler_I000']/value"/></td>
                                    <td><xsl:value-of select="//pv[@id='I000_VDC']/value"/></td>
                                    <td><xsl:value-of select="//pv[@id='I000_amp_gain']/value"/></td>
                                    <td><xsl:value-of select="//pv[@id='I000_amp_current']/value"/></td>
                                </tr>
                                <tr>
                                    <td>photodiode</td>
                                    <td bgcolor="white"><xsl:value-of select="//pv[@id='scaler_diode']/value"/></td>
                                    <td><xsl:value-of select="//pv[@id='diode_VDC']/value"/></td>
                                    <td><xsl:value-of select="//pv[@id='diode_amp_gain']/value"/></td>
                                    <td><xsl:value-of select="//pv[@id='diode_current']/value"/></td>
								</tr>
                    </table>

                <h4>motors</h4>
                <table border="2">
                    <tr style="background-color: grey; color: white;">
                        <td>stage</td>
                        <td>rot,deg</td>
                        <td>X,mm</td>
                        <td>Y,mm</td>
                        <td>Z,mm</td>
                    </tr>
                    <tr>
                        <td>m</td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='mr']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='mx']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='my']/value"/></td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                    </tr>

                    <tr>
                        <td>s</td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='sx']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='sy']/value"/></td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                    </tr>
                    <tr>
                        <td>a</td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='ar']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='ax']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='ay']/value"/></td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                    </tr>
                    <tr>
                        <td>d</td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='dx']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='dy']/value"/></td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                    </tr>
		    <!--
                    <tr>
                        <td>mirror</td>
                        <td bgcolor="#dddddd">< !-/- nothing -/-></td>
                        <td bgcolor="#dddddd">< !-/- nothing -/-></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='mirr_x']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='mirr_vs']/value"/></td>
                        <td bgcolor="#dddddd">< !-/- nothing -/-></td>
                        <td bgcolor="#dddddd">< !-/- nothing -/-></td>
                    </tr>
		    -->
                    <tr>
                        <td>tcam</td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='Tcam']/value"/></td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                    </tr>
                    <tr>
                        <td>SAXS</td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='saxs_x']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='saxs_y']/value"/></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='saxs_z']/value"/></td>
                    </tr>
                   <tr>
                        <td>WAXS1</td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='waxs1_x']/value"/></td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                    </tr>
                  <tr>
                        <td>WAXS2</td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                        <td bgcolor="white"><xsl:value-of select="//pv[@id='waxs2_x']/value"/></td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                        <td bgcolor="#dddddd"><!-- nothing --></td>
                    </tr>
                </table>

                <br/>

            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>
