<recipe folder="root://activities/GetDataActivity">

  <#if modlueName?length gt 1>
<instantiate from="root/res/layout/app_bar.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/layout/${appBarLayoutName}_${modlueName}.xml" />
<#else>
<instantiate from="root/res/layout/app_bar.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/layout/${appBarLayoutName}.xml" />
</#if>



</recipe>
