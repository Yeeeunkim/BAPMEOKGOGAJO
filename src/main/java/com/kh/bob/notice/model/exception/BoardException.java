package com.kh.bob.notice.model.exception;

public class BoardException extends RuntimeException {
	public BoardException() {}
	public BoardException(String msg) {
		super(msg);
	}
}