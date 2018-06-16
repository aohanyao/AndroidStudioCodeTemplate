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


    <instantiate from="src/app_package/classes/Presenter.kotlin.ftl"
      to="${escapeXmlAttribute(srcOut)}/presenter/${presenterClass}.kt" />

    <instantiate from="src/app_package/classes/Bean.kotlin.ftl"
      to="${escapeXmlAttribute(rootOut)}/${slashedPackageName(BeanPackageName)}/${BeanClass}.kt"/>

    <instantiate from="src/app_package/classes/Param.kotlin.ftl"
      to="${escapeXmlAttribute(rootOut)}/${slashedPackageName(ParamPackageName)}/${ParamClass}.kt"/>

    <open file="${escapeXmlAttribute(srcOut)}/view/fragment/${fragmentClass}.kt"/>
</recipe>
