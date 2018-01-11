<?xml version="1.0"?>
<recipe>
    <#include "recipe_simple.xml.ftl" />
    <#include "recipe_list.xml.ftl" />
    <instantiate from="src/app_package/classes/Fragment.kotlin.ftl"
      to="${escapeXmlAttribute(srcOut)}/view/fragment/${fragmentClass}.kt" />

    <instantiate from="src/app_package/classes/Adapter.kotlin.ftl"
      to="${escapeXmlAttribute(srcOut)}/view/adapter/${AdapterClass}.kt" />

    <instantiate from="src/app_package/classes/Presenter.kotlin.ftl"
      to="${escapeXmlAttribute(srcOut)}/presenter/${presenterClass}.kt" />

    <instantiate from="src/app_package/classes/Bean.kotlin.ftl"
      to="${escapeXmlAttribute(rootOut)}/${slashedPackageName(BeanPackageName)}/${BeanClass}.kt"/>

    <instantiate from="src/app_package/classes/Param.kotlin.ftl"
      to="${escapeXmlAttribute(rootOut)}/${slashedPackageName(ParamPackageName)}/${ParamClass}.kt"/>

    <open file="${escapeXmlAttribute(srcOut)}/view/fragment/${fragmentClass}.kt"/>
</recipe>
