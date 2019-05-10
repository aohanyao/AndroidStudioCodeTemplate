<recipe folder="root://activities/MVPOnlyLoadListDataActivity">


  <#if modlueName?length gt 1>
      <instantiate from="root/res/layout/simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${modlueName}_${simpleLayoutName}.xml" />
  <#else>
  <instantiate from="root/res/layout/simple.xml.ftl"
               to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />
  </#if>

</recipe>
