package org.zerock.domain;

import lombok.Data;

@Data
public class pageDTO {

	private int startpage;
	private int endpage;
	private boolean prev,next;
	
	private int total;
	private Criteria criteria;
	
	public pageDTO(Criteria criteria, int total) {
		
		this.criteria = criteria;
		this.total = total;
		
		this.endpage = (int)(Math.ceil(criteria.getPagenum()/10.0)) * 10;
		this.startpage = this.endpage -9;
		
		int realend = (int)(Math.ceil((total * 1.0) / criteria.getAmount()));
		
		if(realend < this.endpage) {
			this.endpage = realend;
		}
		
		this.prev = this.startpage > 1;
		this.next = this.endpage < realend;
	}
}
