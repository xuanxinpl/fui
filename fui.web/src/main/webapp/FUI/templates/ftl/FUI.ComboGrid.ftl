<#--
 # 版本：FVersion@1.0.9-SNAPSHOT
 # 系统名称: FUI
 # 模块名称: JRES
 # 文件名称: FUI.ComboGrid.ftl
 # 作者：qudc
 # 邮箱：qudc@hundsun.com
 # 软件版权: 恒生电子股份有限公司
 # 功能描述： comboGrid组件的dom结构
 # 修改记录:
 # 修改日期         修改人员         修改说明
 # 2012-12-21		qudc	        创建
 # 2013-01-23       qudc           修改readOnly属性成readonly属性
 # 2013-01-23       qudc           修改enabled属性成disabled属性
 # 20130315		hanyin	 增加check属性
-->
<#macro comboGrid id=""  width="" name="" check=""
 valueField="" forceSelection="" displayField="" tabIndex ="" baseParams ="" dataUrl=""   disabled="" readonly="" listHeight="" listWidth="" pageSize=""   selectable="" onLoadsuccess="" onError="" onLoadfailure =""   onSelect="" colModel="" forceLoad="" onBeforesend="" filterField="" multiSelect="" dataHandler="">

<#-- 参数校验，如果值不存在或者为""，则设置为默认值 -->
<@validateAndSet name="id" default=genId("f-combo") />
<@validateAndSet name="width" default="150" />
<@validateAndSet name="readonly" default="false" />
<@validateAndSet name="tabIndex" default="0" />



    <#if boolValue(disabled, false)>
    <div style="WIDTH: ${width}px" class="f-combo f-combo-disable">
        <#elseif !boolValue(selectable, true)>
        <div style="WIDTH: ${width}px" class="f-combo f-combo-selectable">
        <#elseif boolValue(readonly, false)>
        <div style="WIDTH: ${width}px" class="f-combo f-combo-readonly">
        <#else >
        <div style="WIDTH: ${width}px" class="f-combo">
    </#if>
    <input type="hidden" id="${id}" ${!boolValue(disabled, false)?string("","disabled=''")}  name="${name}" check="${check}"
           errorValidateTarget="next" errorMsgTarget="parent"/>
    <input type="text" hasprevioussbling="true" id="combobox-input-${id}" tabindex="${tabIndex}"
           class="f-combo-input f-input-bg ${boolValue(forceSelection,false)?string(' f-combo-input-forceselect','')}" ${!boolValue(disabled, false)?string("","disabled=''")}  ${boolValue(readonly, false)?string("readonly='readonly'","")}  ${boolValue(selectable, true)?string("","readonly='readonly'")}
           autocomplete="off"
           style="WIDTH: ${width?number-25 }px;height:18px;"/><img class="f-combo-trigger"
                                                                   src="${contextPath}/FUI/themes/default/images/s.gif"/>
    <div style="clear:both;"></div>
</div>


<#-- 组件初始化 -->
    <@script>
        $(function() {
            $("#${id}").FComboGrid({
                valueField : "${valueField}",
                displayField :"${displayField}"
                <#if strValue(disabled)?length != 0>
                    ,disabled : ${disabled}
                </#if>
                <#if strValue(onSelect)?length != 0>
                    ,onSelect : ${onSelect}
                </#if>
                <#if strValue(readonly)?length != 0>
                    ,readonly : ${readonly}
                </#if>
                <#if strValue(selectable)?length != 0>
                    ,selectable : ${selectable}
                </#if>
                <#if strValue(forceSelection)?length != 0>
                    ,forceSelection : ${forceSelection}
                </#if>
                <#if strValue(dataUrl)?length != 0>
                    ,dataUrl : "${dataUrl}"
                </#if>
                <#if strValue(baseParams)?length != 0>
                    ,baseParams : ${baseParams}
                </#if>
                <#if strValue(onLoadsuccess)?length != 0>
                    ,onLoadsuccess : ${onLoadsuccess}
                </#if>
                <#if strValue(onLoadfailure)?length != 0>
                    ,onLoadfailure : ${onLoadfailure}
                </#if>
                <#if strValue(onError)?length != 0>
                    ,onError : ${onError}
                </#if>
                <#if strValue(listHeight)?length != 0>
                    ,listHeight : ${listHeight}
                </#if>
                <#if strValue(listWidth)?length != 0>
                    ,listWidth : ${listWidth}
                </#if>
                <#if strValue(pageSize)?length != 0>
                    ,pageSize : ${pageSize}
                </#if>
                <#if strValue(colModel)?length != 0>
                    ,colModel : ${colModel}
                </#if>
                <#if strValue(forceLoad)?length != 0>
                    ,forceLoad : ${forceLoad}
                </#if>
                <#if strValue(onBeforesend)?length != 0>
                    ,onBeforesend : ${onBeforesend}
                </#if>
                <#if strValue(filterField)?length != 0>
                    ,filterField : "${filterField}"
                </#if>
                <#if strValue(multiSelect)?length != 0>
                    ,multiSelect : ${multiSelect}
                </#if>
                <#if strValue(dataHandler)?length != 0>
                    ,dataHandler : "${dataHandler}"
                </#if>

            });
        });
    </@script>

</#macro>
