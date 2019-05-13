<recipe folder="root://activities/GetAndPostDataActivity">


  <#if modlueName?length gt 1>
      <instantiate from="root/res/layout/list.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${modlueName}_${listLayoutName}.xml" />
  <#else>
  <instantiate from="root/res/layout/list.xml.ftl"
               to="${escapeXmlAttribute(resOut)}/layout/${listLayoutName}.xml" />
  </#if>

</recipe>
