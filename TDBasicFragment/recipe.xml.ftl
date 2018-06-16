<?xml version="1.0"?>
<recipe>

  <#if modlueName?length gt 1>
  <instantiate from="res/layout/simple_layout.xml.ftl"
               to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}_${modlueName}.xml" />

  <#else>
  <instantiate from="res/layout/simple_layout.xml.ftl"
               to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />

  </#if>


    <instantiate from="src/app_package/classes/Fragment.kotlin.ftl"
      to="${escapeXmlAttribute(srcOut)}/view/fragment/${fragmentClass}.kt" />



    <open file="${escapeXmlAttribute(srcOut)}/view/fragment/${fragmentClass}.kt"/>
   
</recipe>
