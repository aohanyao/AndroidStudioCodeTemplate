<?xml version="1.0"?>
<globals>

    <#--include "common_globals.xml.ftl" />-->
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />

    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <global id="simpleLayoutName" value="${contentLayoutName}" />
    <global id="appBarLayoutName" value="${layoutName}" />
    <#-- 拆分路径 -->
    <global id="rootOut" value="${srcOut?substring(0,srcOut?index_of("java")+4)}"/>
    <global id="srcParam" value="${srcOut}/${slashedPackageName(packageName)}"/>

    <global id="srcBean" value="${srcDir}/${slashedPackageName(packageName)}"/>
</globals>
