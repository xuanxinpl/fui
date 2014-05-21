/*
 * 系统名称: JRES 应用快速开发企业套件
 * 模块名称: JRES内核
 * 文件名称: FComponentTag.java
 * 软件版权: 恒生电子股份有限公司
 * 修改记录:
 * 修改日期            修改人员                     修改说明 <br>
 * ========    =======  ============================================
 * 
 * ========    =======  ============================================
 */

package com.hundsun.jres.fui.jsp.tag.tool;

import com.hundsun.jres.fui.core.page.tag.FTagProcessor;
import com.hundsun.jres.fui.jsp.FTagWithoutContent;

/**
 * 功能说明:
 * <p>
 * 系统版本: v1.0<br>
 * 开发人员: hanyin <br>
 * 开发时间: 2012-7-18 <br>
 * 功能描述: 写明作用，调用方式，使用场景，以及特殊情况<br>
 */
public class FComponentTag extends FTagWithoutContent
{
	private static final long	serialVersionUID	= 1L;
	/** 组件名 */
	private String				name;
	/** 组名 */
	private String				group;
	/** 资源文件相对于WebRoot的路径 */
	private String				url;

	public void setName(String name)
	{
		this.name = name;
	}

	public void setGroup(String group)
	{
		this.group = group;
	}

	public void setUrl(String url)
	{
		this.url = url;
	}

	/*
	 * (non-Javadoc)
	 * @see com.hundsun.jres.fui.core.page.tag.FBaseTagSupport#getProcessor()
	 */
	public FTagProcessor getProcessor()
	{
		return new FTagProcessor();
	}

	/*
	 * (non-Javadoc)
	 * @see com.hundsun.jres.fui.core.page.tag.FBaseTagSupport#doBeforeProcess()
	 */
	public void doBeforeProcess()
	{
		parameters.put("name", name);
		parameters.put("group", group);
		// parameters.put("url", url);
	}

	/*
	 * (non-Javadoc)
	 * @see com.hundsun.jres.fui.jsp.FBaseJspSupport#getName()
	 */
	@Override
	public String getName()
	{
		return "fcomponet";
	}

}
