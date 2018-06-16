<?xml version="1.0"?>
<recipe>
    <#include "recipe_manifest.xml.ftl" />
    <#include "recipe_simple.xml.ftl" />
    <#include "recipe_app_bar.xml.ftl" />

    <instantiate from="src/app_package/classes/Activity.kotlin.ftl"
      to="${escapeXmlAttribute(srcOut)}/view/activity/${activityClass}.kt" />

    <instantiate from="src/app_package/classes/Presenter.kotlin.ftl"
      to="${escapeXmlAttribute(srcOut)}/presenter/${presenterClass}.kt" />

    <instantiate from="src/app_package/classes/Bean.kotlin.ftl"
      to="${escapeXmlAttribute(rootOut)}/${slashedPackageName(BeanPackageName)}/${BeanClass}.kt"/>

    <instantiate from="src/app_package/classes/ParamGet.kotlin.ftl"
      to="${escapeXmlAttribute(rootOut)}/${slashedPackageName(ParamPackageName)}/${ParamClass}Get.kt"/>

      <instantiate from="src/app_package/classes/ParamPost.kotlin.ftl"
        to="${escapeXmlAttribute(rootOut)}/${slashedPackageName(ParamPackageName)}/${ParamClass}Post.kt"/>

    <open file="${escapeXmlAttribute(srcOut)}/view/activity/${activityClass}.kt"/>
</recipe>
