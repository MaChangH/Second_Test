package com.ma.mini2.sns;

import java.util.List;

public interface SNSMapper {
	public abstract int writeMsg(SNSMsg sm);
	public abstract int getSearchMsgCount(SNSSelector sSel);
	public abstract int getAllMsgCount();
	public abstract List<SNSMsg> getMsg(SNSSelector sSel);
	public abstract List<SNSReply> getReply(SNSMsg sm);
	
}
