package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVo {

	private int rno;
	private Long bno;
	
	private String reply;
	private String replyer;
	private Date replydate;
	private Date updatedate;
}
