<?xml version="1.0"?>
<recipe>
    <#include "recipe_manifest.xml.ftl" />
    <#include "recipe_simple.xml.ftl" />
    <#include "recipe_app_bar.xml.ftl" />
    <merge from="AndroidManifest.xml.ftl" to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />


    <instantiate from="src/app_package/classes/Activity.kotlin.ftl"
      to="${escapeXmlAttribute(srcOut)}/view/activity/${activityClass}.kt" />


    <instantiate from="src/app_package/classes/Presenter.kotlin.ftl"
      to="${escapeXmlAttribute(srcOut)}/presenter/${presenterClass}.kt" />

    <instantiate from="src/app_package/classes/Param.kotlin.ftl"
      to="${escapeXmlAttribute(rootOut)}/${slashedPackageName(ParamPackageName)}/${ParamClass}.kt"/>


    <open file="${escapeXmlAttribute(srcOut)}/view/activity/${activityClass}.kt"/>
</recipe>
