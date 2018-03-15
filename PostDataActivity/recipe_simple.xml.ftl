<recipe folder="root://activities/PostDataActivity">


  <#if modlueName?length gt 1>
      <instantiate from="root/res/layout/simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}_${modlueName}.xml" />
  <#else>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />
  </#if>

</recipe>
