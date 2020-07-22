package org.zerock.domain;

import lombok.Data;

@Data
public class Criteria {

	private int pagenum;
	private int amount;
	
	public Criteria() {
		this(1,10);
	}
	
	public Criteria(int pagenum, int amount) {
		this.pagenum = pagenum;
		this.amount = amount;
	}
	
	
}
