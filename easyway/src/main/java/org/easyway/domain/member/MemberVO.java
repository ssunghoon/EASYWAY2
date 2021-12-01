package org.easyway.domain.member;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	private int member_id;
	private String member_email;
	private String member_pw;
	private String member_name;
}
