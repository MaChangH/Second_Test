package com.ma.mini2.Member;

import java.util.List;

public interface MemberMapper {
	public abstract List<Member> getMemberById(Member m);
	public abstract int regMember(Member m);
}
