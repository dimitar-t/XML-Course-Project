<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" indent="yes" />
    
    <xsl:template match="reservoirInfo">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master page-height="297mm" page-width="210mm"
                                       margin="5mm 25mm 5mm 25mm" master-name="PageMaster">
                    <fo:region-body margin="20mm 0mm 20mm 0mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-name="PageMaster" master-reference="PageMaster">
                <fo:flow flow-name="xsl-region-body" >
                    <fo:block>
                        ti pa si govno
                        <fo:table>
                            <fo:table-column column-width="25mm"/>
                            <fo:table-column column-width="25mm"/>
                            <fo:table-column column-width="25mm"/>
                            <fo:table-column column-width="25mm"/>
                            <fo:table-column column-width="25mm"/>
                            <fo:table-column column-width="25mm"/>
                            <fo:table-column column-width="25mm"/>
                            
                            <fo:table-header>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">Name</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">Depth</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">Dam height</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">Length</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">Coordinates</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">Area</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">Water capacity</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-header>
                            
                            <fo:table-body>
                                <xsl:apply-templates select="./reservoirs/reservoir"/>                                
                            </fo:table-body>                            
                        </fo:table>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    
    <xsl:template match="reservoir">
        <fo:table-row>
            <xsl:apply-templates />
        </fo:table-row>
    </xsl:template>
    
    <xsl:template match="name">
        <fo:table-cell>
            <fo:block><xsl:apply-templates /></fo:block>
        </fo:table-cell>
    </xsl:template>
    
    <xsl:template match="depth">
        <fo:table-cell>
            <fo:block><xsl:apply-templates /></fo:block>
        </fo:table-cell>
    </xsl:template>
    
    <xsl:template match="damHeight">
        <fo:table-cell>
            <fo:block><xsl:apply-templates /></fo:block>
        </fo:table-cell>
    </xsl:template>
    
    <xsl:template match="length">
        <fo:table-cell>
            <fo:block><xsl:apply-templates /></fo:block>
        </fo:table-cell>
    </xsl:template>
    
    <xsl:template match="coordinates">
        <fo:table-cell>
            <fo:block><xsl:apply-templates /></fo:block>
        </fo:table-cell>
    </xsl:template>
    
    <xsl:template match="area">
        <fo:table-cell>
            <fo:block><xsl:apply-templates /></fo:block>
        </fo:table-cell>
    </xsl:template>
    
    <xsl:template match="water_capacity">
        <fo:table-cell>
            <fo:block><xsl:apply-templates /></fo:block>
        </fo:table-cell>
    </xsl:template>
</xsl:stylesheet>
