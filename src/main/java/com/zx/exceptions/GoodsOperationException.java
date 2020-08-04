package com.zx.exceptions;

public class GoodsOperationException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6065096829798869643L;

	public GoodsOperationException(String msg){
		super(msg);
	}
}
