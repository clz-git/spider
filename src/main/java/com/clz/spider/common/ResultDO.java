package com.clz.spider.common;

import java.io.Serializable;


public class ResultDO implements Serializable{
	private static final long serialVersionUID = 8683041472136516441L;
	private Object data;
	private Boolean success;
	private String message;
	/**
	 * 结果
	 * @param data 正确数据.
	 * @param success true/false;
 	 * @param message 错误信息.
	 */
	public ResultDO(Object data, Boolean success, String message) {
		super();
		this.data = data;
		this.success = success;
		this.message = message;
	}

	public Boolean getSuccess() {
		return success;
	}

	public void setSuccess(Boolean success) {
		this.success = success;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}


}
