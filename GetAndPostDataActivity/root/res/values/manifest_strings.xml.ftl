<resources>
    <#if modlueName?length gt 1>
        <string name="title_${modlueName}_${activityToLayout(activityClass)}">${escapeXmlString(activityTitle)}</string>
    <#else>
        <string name="title_${activityToLayout(activityClass)}">${escapeXmlString(activityTitle)}</string>
    </#if>
</resources>
