<?xml version="1.0"?>
<globals>


    <global id="parentfragmentClass" value="" />

    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generatefragmentTitle" type="boolean" value="false" />
    <global id="simpleLayoutName" value="${layoutName}" />

    <#-- 拆分路径 -->
    <global id="rootOut" value="${srcOut?substring(0,srcOut?index_of("java")+4)}"/>
    <global id="srcParam" value="${srcOut}/${slashedPackageName(packageName)}"/>

</globals>
