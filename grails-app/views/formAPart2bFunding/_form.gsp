<%@ page import="cbm.FormAPart2bFunding" %>



<div class="fieldcontain ${hasErrors(bean: formAPart2bFundingInstance, field: 'amount', 'error')} required">
	<label for="amount" class="property-label25">
		<g:message code="formAPart2bFunding.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" value="${fieldValue(bean: formAPart2bFundingInstance, field: 'amount')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: formAPart2bFundingInstance, field: 'source', 'error')} ">
	<label for="source" class="property-label25">
		<g:message code="formAPart2bFunding.source.label" default="Source" />
		
	</label>
	<g:textField name="source" value="${formAPart2bFundingInstance?.source}"/>
</div>

