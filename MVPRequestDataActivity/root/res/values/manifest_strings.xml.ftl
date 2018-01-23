<resources>

    <#if modlueName?length gt 1>
        <string name="title_${activityToLayout(activityClass)}_${modlueName}">${escapeXmlString(activityTitle)}</string>
    <#else>
        <string name="title_${activityToLayout(activityClass)}">${escapeXmlString(activityTitle)}</string>
    </#if>

</resources>
