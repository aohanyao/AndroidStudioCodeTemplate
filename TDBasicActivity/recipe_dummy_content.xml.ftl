<recipe folder="root://activities/TDBasicActivity">
    <#assign ext=(generateKotlin!false)?string('kt', 'java')>

    <instantiate from="root/src/app_package/dummy/DummyContent.${ext}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/dummy/DummyContent.${ext}" />
</recipe>
